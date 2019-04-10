//funzione che permette l'aprirsi di una sezione contenente la cartolina  e le note riguardanti
function image() {
    src=this.getAttribute("src");
    container.style.height="auto";
    TEXT1.style.display="none";
    if (src=="7694-061F.jpg" ) {
      section_2.style.display="block";
      container_fronte.appendChild(R1);
      R1.style.display="block";
      R2.style.display="none";
      container_testo.appendChild(TEXT1);
      container.appendChild(container_testo);
      TEXT1.style.display="inline-block";
      TEXT2.style.display="none";
    } else if (src == "7694-191F.jpg"  ) {
        section_2.style.display="block";
        container_fronte.appendChild(R2);
        R1.style.display="none";
        R2.style.display="block";
        container_testo.appendChild(TEXT2);
        container.appendChild(container_testo);
        TEXT2.style.display="block";
        TEXT1.style.display="none";
      }
   cliccato=true;
 }
//variabili
  var imgClick1;
  var imgClick2;
  var src;
  var TEXT1;
  var TEXT2;
  var section2;
  var section3;
  var container_fronte;
  var container_testo;
  var R1;
  var R2;
  var container;
  var divC2;
  
//funzione principale
function gestoreLoad() {
  try {
    divC2=document.getElementById("cartolina2");    
    container=document.getElementById("container");
    container_fronte=document.getElementById("container_cartolina");    
    container_testo=document.getElementById("container_testo");
    R1= document.getElementById("R1");
    R2 = document.getElementById("R2");
    TEXT1= document.getElementById("cartolinaheader_1");
    TEXT2= document.getElementById("cartolinaheader_2");
    section2=document.getElementById("section_2");
    section3=document.getElementById("section_3");
    imgClick1=document.getElementById("img1");
    imgClick2=document.getElementById("img2");
    imgClick1.onclick=image;
    imgClick2.onclick=image;
  } 
  catch(e) {
    alert("gestoreLoad: "+e);
  }
} 
window.onload=gestoreLoad;