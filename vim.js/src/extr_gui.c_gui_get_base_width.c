
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int border_offset; scalar_t__ scrollbar_width; scalar_t__* which_scrollbars; } ;


 size_t SBAR_LEFT ;
 size_t SBAR_RIGHT ;
 TYPE_1__ gui ;

int
gui_get_base_width()
{
    int base_width;

    base_width = 2 * gui.border_offset;
    if (gui.which_scrollbars[SBAR_LEFT])
 base_width += gui.scrollbar_width;
    if (gui.which_scrollbars[SBAR_RIGHT])
 base_width += gui.scrollbar_width;
    return base_width;
}
