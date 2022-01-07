
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_t ;


 int * libvlc_media_new_location (int ,char const*) ;
 int libvlc_media_player_set_media (int ,int *) ;
 int libvlc_media_release (int *) ;
 int media_player ;
 int play () ;
 int vlc_inst ;

void open_media(const char* uri) {
    libvlc_media_t *media;
    media = libvlc_media_new_location(vlc_inst, uri);
    libvlc_media_player_set_media(media_player, media);
    play();
    libvlc_media_release(media);
}
