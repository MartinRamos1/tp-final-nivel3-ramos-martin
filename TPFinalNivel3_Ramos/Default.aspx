﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPFinalNivel3_Ramos.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Work+Sans:ital,wght@0,100..900;1,100..900&display=swap');
        .product-grid {
            background-color: #fff;
            font-family: 'Work Sans', sans-serif;
            text-align: center;
            transition: all 0.3s ease 0s;
        }

            .product-grid:hover {
                box-shadow: 0 0 20px -10px rgba(237,29,36,0.3);
            }

            .product-grid .product-image {
                overflow: hidden;
                position: relative;
                transition: all 0.3s ease 0s;
            }

            .product-grid:hover .product-image {
                border-radius: 0 0 30px 30px;
            }

            .product-grid .product-image a.image {
                display: block;
            }

            .product-grid .product-image img {
                width: 100%;
                height: auto;
            }

        .product-image .pic-1 {
            backface-visibility: hidden;
            transition: all 0.5s ease 0s;
        }

        .product-grid:hover .product-image .pic-1 {
            opacity: 0;
        }

        .product-image .pic-2 {
            width: 100%;
            height: 100%;
            backface-visibility: hidden;
            opacity: 0;
            position: absolute;
            top: 0;
            left: 0;
            transition: all 0.5s ease 0s;
        }

        .product-grid:hover .product-image .pic-2 {
            opacity: 1;
        }

        .product-grid .product-links {
            padding: 0;
            margin: 0;
            list-style: none;
            opacity: 0;
            position: absolute;
            bottom: 0;
            right: 10px;
            transition: all 0.3s ease 0s;
        }

        .product-grid:hover .product-links {
            opacity: 1;
        }

        .product-grid .product-links li {
            margin: 0 0 10px 0;
            transform: rotate(360deg) scale(0);
            transition: all 0.3s ease 0s;
        }

        .product-grid:hover .product-links li {
            transform: rotate(0) scale(1);
        }

            .product-grid:hover .product-links li:nth-child(3) {
                transition-delay: 0.1s;
            }

            .product-grid:hover .product-links li:nth-child(2) {
                transition-delay: 0.2s;
            }

            .product-grid:hover .product-links li:nth-child(1) {
                transition-delay: 0.3s;
            }

        .product-grid .product-links li a {
            color: #666;
            background-color: #fff;
            font-size: 18px;
            line-height: 42px;
            width: 40px;
            height: 40px;
            border-radius: 50px;
            display: block;
            transition: all 0.3s ease 0s;
        }

            .product-grid .product-links li a:hover {
                color: #fff;
                background-color: #ed1d24;
            }

        .product-grid .product-content {
            text-align: left;
            padding: 15px 10px;
        }

        .product-grid .rating {
            padding: 0;
            margin: 0 0 7px;
            list-style: none;
        }

            .product-grid .rating li {
                color: #f7bc3d;
                font-size: 13px;
            }

                .product-grid .rating li.far {
                    color: #777;
                }

        .product-grid .title {
            font-size: 16px;
            font-weight: 600;
            text-transform: capitalize;
            margin: 0 0 6px;
        }

            .product-grid .title a {
                color: #555;
                transition: all 0.3s ease 0s;
                text-decoration: none;
            }

                .product-grid .title a:hover {
                    color: #ed1d24;
                }

        .product-grid .price {
            color: #ed1d24;
            font-size: 18px;
            font-weight: 700;
        }

        @media screen and (max-width:990px) {
            .product-grid {
                margin: 0 0 30px;
            }
        }
    </style>


    <div class="row">

        <%foreach (dominio.Producto prod in Lista)
            {%>

        <div class="col-md-3 col-sm-6">
            <div class="product-grid">
                <div class="product-image">
                    <a href="Detalles.aspx?id=<%: prod.Id%>" class="image">
                        <img class="pic-1" src="https://www.rueducommerce.fr/media/produits/apple/apple-iphone-15-pro-max-6-7-5g-double-sim-1-to-blanc-titanium-3545068_1200x1200.jpeg">
                        <img class="pic-2" src="https://smartphonestorekenya.com/wp-content/uploads/2023/10/IPHONE-15.jpeg">
                    </a>
                    <ul class="product-links">
                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        <li><a href="#"><i class="far fa-heart"></i></a></li>
                        <li><a href="#"><i class="fa fa-random"></i></a></li>
                        <li><a href="#"><i class="fa fa-search"></i></a></li>
                    </ul>
                </div>
                <div class="product-content">
                    <ul class="rating">
                        <li class="fa fa-star"></li>
                        <li class="fa fa-star"></li>
                        <li class="fa fa-star"></li>
                        <li class="fa fa-star"></li>
                        <li class="far fa-star"></li>
                    </ul>
                    <h3 class="title"><a href="Detalles.aspx?id=<%: prod.Id%>"><%: prod.Nombre%></a></h3>
                    <div class="price">$<%: prod.Precio.ToString("0,0")%></div>
                </div>
            </div>
        </div>


        <%   } %>
    </div>





</asp:Content>
