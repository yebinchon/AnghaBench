
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wl_output_subpixel { ____Placeholder_wl_output_subpixel } wl_output_subpixel ;
typedef int cairo_subpixel_order_t ;


 int CAIRO_SUBPIXEL_ORDER_BGR ;
 int CAIRO_SUBPIXEL_ORDER_DEFAULT ;
 int CAIRO_SUBPIXEL_ORDER_RGB ;
 int CAIRO_SUBPIXEL_ORDER_VBGR ;
 int CAIRO_SUBPIXEL_ORDER_VRGB ;





cairo_subpixel_order_t to_cairo_subpixel_order(enum wl_output_subpixel subpixel) {
 switch (subpixel) {
 case 130:
  return CAIRO_SUBPIXEL_ORDER_RGB;
 case 131:
  return CAIRO_SUBPIXEL_ORDER_BGR;
 case 128:
  return CAIRO_SUBPIXEL_ORDER_VRGB;
 case 129:
  return CAIRO_SUBPIXEL_ORDER_VBGR;
 default:
  return CAIRO_SUBPIXEL_ORDER_DEFAULT;
 }
 return CAIRO_SUBPIXEL_ORDER_DEFAULT;
}
