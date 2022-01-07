
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GTK_BUTTON (int ) ;
 int gtk_button_set_label (int ,char*) ;
 int libvlc_media_player_pause (int ) ;
 int media_player ;
 int playpause_button ;

void pause_player(void) {
    libvlc_media_player_pause(media_player);
    gtk_button_set_label(GTK_BUTTON(playpause_button), "gtk-media-play");
}
