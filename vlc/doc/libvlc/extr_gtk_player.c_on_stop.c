
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int GtkWidget ;


 int libvlc_media_player_stop_async (int ) ;
 int media_player ;
 int pause_player () ;

void on_stop(GtkWidget *widget, gpointer data) {
    pause_player();
    libvlc_media_player_stop_async(media_player);
}
