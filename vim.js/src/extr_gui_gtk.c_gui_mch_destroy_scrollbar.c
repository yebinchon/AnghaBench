
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * id; } ;
typedef TYPE_1__ scrollbar_T ;


 int gtk_widget_destroy (int *) ;
 int gui_mch_update () ;

void
gui_mch_destroy_scrollbar(scrollbar_T *sb)
{
    if (sb->id != ((void*)0))
    {
 gtk_widget_destroy(sb->id);
 sb->id = ((void*)0);
    }
    gui_mch_update();
}
