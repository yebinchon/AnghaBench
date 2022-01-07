
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int border_offset; scalar_t__ footer_height; scalar_t__ tabline_height; scalar_t__ toolbar_height; scalar_t__ menu_height; scalar_t__ menu_is_active; scalar_t__ scrollbar_height; scalar_t__* which_scrollbars; } ;


 int GO_FOOTER ;
 int GO_TOOLBAR ;
 size_t SBAR_BOTTOM ;
 scalar_t__ TOOLBAR_BORDER_HEIGHT ;
 scalar_t__ TOOLBAR_BUTTON_HEIGHT ;
 TYPE_1__ gui ;
 scalar_t__ gui_has_tabline () ;
 scalar_t__ gui_mch_text_area_extra_height () ;
 int p_go ;
 int * vim_strchr (int ,int ) ;

int
gui_get_base_height()
{
    int base_height;

    base_height = 2 * gui.border_offset;
    if (gui.which_scrollbars[SBAR_BOTTOM])
 base_height += gui.scrollbar_height;
    return base_height;
}
