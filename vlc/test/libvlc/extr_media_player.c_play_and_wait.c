
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_sem_t ;
typedef int libvlc_media_player_t ;
typedef int libvlc_event_manager_t ;


 int assert (int) ;
 int libvlc_MediaPlayerPlaying ;
 int libvlc_event_attach (int *,int ,int ,int *) ;
 int libvlc_event_detach (int *,int ,int ,int *) ;
 int * libvlc_media_player_event_manager (int *) ;
 int libvlc_media_player_play (int *) ;
 int on_event ;
 int test_log (char*) ;
 int vlc_sem_destroy (int *) ;
 int vlc_sem_init (int *,int ) ;
 int vlc_sem_wait (int *) ;

__attribute__((used)) static void play_and_wait(libvlc_media_player_t *mp)
{
    libvlc_event_manager_t *em = libvlc_media_player_event_manager(mp);

    vlc_sem_t sem;
    vlc_sem_init(&sem, 0);

    int res;
    res = libvlc_event_attach(em, libvlc_MediaPlayerPlaying, on_event, &sem);
    assert(!res);

    libvlc_media_player_play(mp);

    test_log("Waiting for playing\n");
    vlc_sem_wait(&sem);

    libvlc_event_detach(em, libvlc_MediaPlayerPlaying, on_event, &sem);

    vlc_sem_destroy(&sem);
}
