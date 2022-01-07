
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cairo_t ;
struct TYPE_3__ {scalar_t__ style; } ;
typedef TYPE_1__ RofiDistance ;


 scalar_t__ ROFI_HL_DASH ;
 int cairo_set_dash (int *,double const*,int,double) ;

void distance_get_linestyle ( RofiDistance d, cairo_t *draw )
{
    if ( d.style == ROFI_HL_DASH ) {
        const double dashes[1] = { 4 };
        cairo_set_dash ( draw, dashes, 1, 0.0 );
    }
    else {
        cairo_set_dash ( draw, ((void*)0), 0, 0.0 );
    }
}
