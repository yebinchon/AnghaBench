
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mainwin; } ;


 int GTK_WINDOW (int ) ;
 int gtk_window_iconify (int ) ;
 TYPE_1__ gui ;

void
gui_mch_iconify(void)
{
    gtk_window_iconify(GTK_WINDOW(gui.mainwin));
}
