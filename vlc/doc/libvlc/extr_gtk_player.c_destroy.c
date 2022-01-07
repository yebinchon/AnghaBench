
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int GtkWidget ;


 int gtk_main_quit () ;

void destroy(GtkWidget *widget, gpointer data) {
    gtk_main_quit();
}
