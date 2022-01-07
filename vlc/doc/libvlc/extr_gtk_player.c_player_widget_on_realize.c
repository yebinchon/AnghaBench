
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int GtkWidget ;


 int GDK_WINDOW_XID (int ) ;
 int gtk_widget_get_window (int *) ;
 int libvlc_media_player_set_xwindow (int ,int ) ;
 int media_player ;

void player_widget_on_realize(GtkWidget *widget, gpointer data) {
    libvlc_media_player_set_xwindow(media_player, GDK_WINDOW_XID(gtk_widget_get_window(widget)));
}
