
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_player_t ;
typedef int libvlc_event_manager_t ;


 int VLC_THUMBNAIL_POSITION ;
 int assert (int *) ;
 int callback ;
 int done ;
 int event_wait (char*) ;
 int libvlc_MediaPlayerPositionChanged ;
 int libvlc_event_attach (int *,int ,int ,int *) ;
 int libvlc_event_detach (int *,int ,int ,int *) ;
 int * libvlc_media_player_event_manager (int *) ;
 int libvlc_media_player_set_position (int *,int ) ;

__attribute__((used)) static void set_position(libvlc_media_player_t *mp)
{
    libvlc_event_manager_t *em = libvlc_media_player_event_manager(mp);
    assert(em);

    libvlc_event_attach(em, libvlc_MediaPlayerPositionChanged, callback, ((void*)0));
    done = 0;
    libvlc_media_player_set_position(mp, VLC_THUMBNAIL_POSITION);
    event_wait("Couldn't set position");
    libvlc_event_detach(em, libvlc_MediaPlayerPositionChanged, callback, ((void*)0));
}
