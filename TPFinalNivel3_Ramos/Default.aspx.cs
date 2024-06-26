﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using dominio;

namespace TPFinalNivel3_Ramos
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Producto> Lista { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            ProductoNegocio negocio = new ProductoNegocio();
            Lista = negocio.Listar();
            Session.Add("lista", Lista);
        }

        protected void txtBuscar_TextChanged(object sender, EventArgs e)
        {
            ProductoNegocio negocio = new ProductoNegocio();
            Lista = (List<Producto>)Session["lista"];
            List<Producto> listaFiltrada = Lista.FindAll(x => x.Nombre.ToUpper().Contains(txtBuscar.Text.ToUpper()));
            Session.Add("listaFiltrada", listaFiltrada);
            Response.Redirect("Busqueda.aspx");
        }
    }
}