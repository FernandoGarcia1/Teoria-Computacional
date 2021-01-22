import {Viaje}  from '../models/Viaje.js'
import {Testimonial} from '../models/Testimoniales.js'
import PassportLocals from 'passport-local'
import  serializeUser from 'passport';
var PassportLocal = PassportLocals.Strategy;
import passport from 'passport';


const paginaInicio= async (req, res) => {
    //consultar 3 viajes del modelo viaje

    try {
        const viajes = await Viaje.findAll({limit:3, order:[['id','DESC']]}  );


        const testimoniales = await Testimonial.findAll({limit:3, order:[['id','DESC']]}  );

        res.render('inicio',{
            pagina: 'Inicio',
            home: 'home',
            viajes,
            testimoniales

        });
    } catch (error) {
        console.log(error);
    }

   
}

const hola= 2+7;
const paginaNosotros =  (req, res) => {
    req.logout();
    res.render('nosotros', {
        pagina: 'Acerca de',
        hola : hola
    });

}

const paginaViajes =  async (req, res) => {
    req.logout();
    try {
        const viajes = await Viaje.findAll({
            order:[['id','DESC']]
        });
        console.log(viajes);
        res.render('viajes',{
            pagina: 'POSTS',
            viajes
        });
    } catch (error) {
        
    }    
}

const paginaTestimoniales = async (req, res) => {
    req.logout();
    try {
        const testimoniales = await Testimonial.findAll();
        res.render('testimoniales',{
            pagina: 'COMPARTE Y EXPLORA',
            testimoniales
            });
    }catch(error){
        console.log(error);
    }

    
}

const paginaDetalleVIajes = async (req,res) =>{
    req.logout();
    const {slug} = req.params;

    try{
        const viaje = await Viaje.findOne({where: {slug}})

        res.render('viaje', {
            pagina: 'Informacion Viaje',
            viaje
        })
    }catch(error){
        console.log("hay error" + error);
    }
}

const paginaLogout = (req, res) =>{
    req.logout();
    res.redirect('/login');
}

const paginaLoginGet = (req, res)=> {
    //Mostrar el formulario de login
    res.render('login')
}

const paginaLoginPost = passport.authenticate("local",   {
    successRedirect: "/admin",
    failureRedirect: "/login"    
});

const paginaAdmin = (req,res,next) =>{
    if(req.isAuthenticated()) res.render("admin");;

    res.redirect("/login");
}

const paginaAdmin2 = (req,res,next) =>{
    if(req.isAuthenticated()) res.render("admin2");;

    res.redirect("/login");
}

const paginaReservacionesAdmin = (req,res,next) =>{
    if(req.isAuthenticated()) res.render("reservacionesAdmin");;

    res.redirect("/login");
}

const paginaTestimonialesAdmin = async (req,res,next) =>{
    if(req.isAuthenticated()) {
        //res.render("testimonialesAdmin");

        try {
            const testimoniales = await Testimonial.findAll();
            res.render('testimonialesAdmin',{
                pagina: 'Administracion de LINKs',
                testimoniales
                });
        }catch(error){
            console.log(error);
        }
    }

    res.redirect("/login");
}

const paginaViajesAdmin = async (req,res,next) =>{
    if(req.isAuthenticated()) {
        try {
            const viajes = await Viaje.findAll({
                order:[['id','DESC']]
            });
            //console.log(viajes);
            res.render('viajesAdmin',{
                pagina: 'Administracion POSTS',
                viajes
            });
        } catch (error) {
            console.log('Error al visitar la pagina viajes: '+error);
        }    
    } else        

    res.redirect("/login");
}

const eliminarViaje = async(req, res, next) =>{
    const {id}= req.params;
   try {
       await Viaje.destroy({where: {id : id}})    

       res.redirect("/viajesAdmin")
   } catch (error) {
       console.log("hay error" + error);
   }
   
}

const paginaRestablecer =  (req, res) => {    
    res.render('restablecer');
}



export{
    paginaInicio,
    paginaNosotros,    
    paginaViajes,
    paginaTestimoniales,
    paginaDetalleVIajes,
    paginaLogout,
    paginaLoginGet,
    paginaLoginPost,
    paginaAdmin,
    paginaAdmin2,
    paginaReservacionesAdmin,
    paginaTestimonialesAdmin,
    paginaViajesAdmin,
    eliminarViaje,
    paginaRestablecer,
    
}


