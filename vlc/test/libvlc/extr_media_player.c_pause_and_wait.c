
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_sem_t ;
typedef int libvlc_media_player_t ;
typedef int libvlc_event_manager_t ;


 int assert (int) ;
 int libvlc_MediaPlayerEndReached ;
 int libvlc_MediaPlayerPaused ;
 scalar_t__ libvlc_Playing ;
 int libvlc_event_attach (int *,int ,int ,int *) ;
 int libvlc_event_detach (int *,int ,int ,int *) ;
 int * libvlc_media_player_event_manager (int *) ;
 scalar_t__ libvlc_media_player_get_state (int *) ;
 int libvlc_media_player_set_pause (int *,int) ;
 int on_event ;
 int test_log (char*) ;
 int vlc_sem_destroy (int *) ;
 int vlc_sem_init (int *,int ) ;
 int vlc_sem_wait (int *) ;

__attribute__((used)) static void pause_and_wait(libvlc_media_player_t *mp)
{
    libvlc_event_manager_t *em = libvlc_media_player_event_manager(mp);

    vlc_sem_t sem;
    vlc_sem_init(&sem, 0);

    int res;
    res = libvlc_event_attach(em, libvlc_MediaPlayerPaused, on_event, &sem);
    assert(!res);
    res = libvlc_event_attach(em, libvlc_MediaPlayerEndReached, on_event, &sem);
    assert(!res);

    libvlc_media_player_set_pause(mp, 1);


    if (libvlc_media_player_get_state(mp) == libvlc_Playing)
    {
        test_log("Waiting for pause\n");
        vlc_sem_wait(&sem);
    }

    vlc_sem_destroy(&sem);
    libvlc_event_detach(em, libvlc_MediaPlayerPaused, on_event, &sem);
    libvlc_event_detach(em, libvlc_MediaPlayerEndReached, on_event, &sem);
}
