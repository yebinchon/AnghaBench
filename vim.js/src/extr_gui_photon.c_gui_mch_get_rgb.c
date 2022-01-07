
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int long_u ;
typedef int guicolor_T ;


 int PgBlueValue (int ) ;
 int PgGreenValue (int ) ;
 int PgRGB (int ,int ,int ) ;
 int PgRedValue (int ) ;

long_u
gui_mch_get_rgb(guicolor_T pixel)
{
    return PgRGB(PgRedValue(pixel), PgGreenValue(pixel), PgBlueValue(pixel));
}
