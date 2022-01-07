
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int guicolor_T ;
struct TYPE_3__ {int red; int green; int blue; } ;
typedef TYPE_1__ RGBColor ;


 int Blue (int ) ;
 int Green (int ) ;
 int RGBBackColor (TYPE_1__*) ;
 int Red (int ) ;

void
gui_mch_set_bg_color(guicolor_T color)
{
    RGBColor TheColor;

    TheColor.red = Red(color) * 0x0101;
    TheColor.green = Green(color) * 0x0101;
    TheColor.blue = Blue(color) * 0x0101;

    RGBBackColor(&TheColor);
}
