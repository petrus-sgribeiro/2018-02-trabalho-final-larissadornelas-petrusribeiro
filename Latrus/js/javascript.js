$(document).ready(function(){
   $(window).on('scroll', function() {
      if($(this).scrollTop() > 280) {
         $("#move-on-scroll").addClass("fixed-top");
         $(".nav-header").addClass("ajustes-header");
         $(".search-top").addClass("ajustes-header");
         $("#logo-fundo-escuro").show("slow");
              }
               else{
           $("#logo-fundo-escuro").hide();
           $(".nav-header").removeClass("ajustes-header");
           $(".search-top").removeClass("ajustes-header");
           $("#move-on-scroll").removeClass("fixed-top ajustes-header");
      }
   });
});