
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * id; } ;
typedef TYPE_1__ scrollbar_T ;
struct TYPE_5__ {int formwin; } ;


 int GTK_FORM (int ) ;
 int gtk_form_move_resize (int ,int *,int,int,int,int) ;
 TYPE_3__ gui ;

void
gui_mch_set_scrollbar_pos(scrollbar_T *sb, int x, int y, int w, int h)
{
    if (sb->id != ((void*)0))
 gtk_form_move_resize(GTK_FORM(gui.formwin), sb->id, x, y, w, h);
}
