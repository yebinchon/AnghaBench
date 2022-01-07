
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_player_t ;
typedef int libvlc_event_manager_t ;


 int assert (int *) ;
 int callback ;
 int done ;
 int event_wait (char*) ;
 int libvlc_MediaPlayerSnapshotTaken ;
 int libvlc_event_attach (int *,int ,int ,int *) ;
 int libvlc_event_detach (int *,int ,int ,int *) ;
 int * libvlc_media_player_event_manager (int *) ;
 int libvlc_video_take_snapshot (int *,int ,char*,int,int ) ;

__attribute__((used)) static void snapshot(libvlc_media_player_t *mp, int width, char *out_with_ext)
{
    libvlc_event_manager_t *em = libvlc_media_player_event_manager(mp);
    assert(em);

    libvlc_event_attach(em, libvlc_MediaPlayerSnapshotTaken, callback, ((void*)0));
    done = 0;
    libvlc_video_take_snapshot(mp, 0, out_with_ext, width, 0);
    event_wait("Snapshot has not been written");
    libvlc_event_detach(em, libvlc_MediaPlayerSnapshotTaken, callback, ((void*)0));
}
