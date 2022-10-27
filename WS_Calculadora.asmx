<%@ WebService Language="C#" Class="WebService1" %>

using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Web;
using System.Web.Services;





[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding (ConformsTo = WsiProfiles.BasicProfile1_1)]

public class WS_Calculadora : System.Web.Services.WebService{


     public WS_Calculadora()
    {
        //Elimine la marca de comentario de la línea siguiente si utiliza los componentes diseñados
        //InitializeComponent();
    }

     [WebMethod]
     public decimal Sumar(decimal numero1, decimal numero2)
    {
         decimal resultado = numero1 + numero2;
         return resultado;
    }
     [WebMethod]
     public decimal Restar(decimal numero1, decimal numero2)
    {
         decimal resultado = numero1 - numero2;
         return resultado;
    }
     [WebMethod]
     public decimal Multiplicar(decimal numero1, decimal numero2)
    {
         decimal resultado = numero1 * numero2;
         return resultado;
    }
     [WebMethod]
     public decimal Dividir(decimal numero1, decimal numero2)
    {
         if ( numero2 != 0)
           {
            decimal resultado = numero1 / numero2;
           }
         else if (numero2 == 0 && numero1 != 0)
           {
            decimal resultado = numero2 / numero1;
           }
         return resultado;
    }
}

