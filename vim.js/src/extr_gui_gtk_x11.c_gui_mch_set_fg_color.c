
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ guicolor_T ;
struct TYPE_4__ {TYPE_1__* fgcolor; } ;
struct TYPE_3__ {unsigned long pixel; } ;


 TYPE_2__ gui ;

void
gui_mch_set_fg_color(guicolor_T color)
{
    gui.fgcolor->pixel = (unsigned long)color;
}
