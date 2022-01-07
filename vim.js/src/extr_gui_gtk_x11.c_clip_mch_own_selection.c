
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int gtk_sel_atom; } ;
typedef TYPE_1__ VimClipboard ;
struct TYPE_5__ {int event_time; int drawarea; } ;


 int FAIL ;
 int OK ;
 int gtk_selection_owner_set (int ,int ,int ) ;
 TYPE_2__ gui ;
 int gui_mch_update () ;

int
clip_mch_own_selection(VimClipboard *cbd)
{
    int success;

    success = gtk_selection_owner_set(gui.drawarea, cbd->gtk_sel_atom,
          gui.event_time);
    gui_mch_update();
    return (success) ? OK : FAIL;
}
