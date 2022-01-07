
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_sem_t ;
typedef int libvlc_media_t ;
typedef int libvlc_event_manager_t ;


 int assert (int) ;
 int finished_event ;
 int libvlc_MediaParsedChanged ;
 int libvlc_event_attach (int *,int ,int ,int *) ;
 int libvlc_event_detach (int *,int ,int ,int *) ;
 int * libvlc_media_event_manager (int *) ;
 int libvlc_media_parse_local ;
 int libvlc_media_parse_with_options (int *,int ,int) ;
 int vlc_sem_destroy (int *) ;
 int vlc_sem_init (int *,int ) ;
 int vlc_sem_wait (int *) ;

__attribute__((used)) static void
media_parse_sync(libvlc_media_t *p_m)
{
    vlc_sem_t sem;
    vlc_sem_init(&sem, 0);

    libvlc_event_manager_t *p_em = libvlc_media_event_manager(p_m);
    libvlc_event_attach(p_em, libvlc_MediaParsedChanged, finished_event, &sem);

    int i_ret = libvlc_media_parse_with_options(p_m, libvlc_media_parse_local, -1);
    assert(i_ret == 0);

    vlc_sem_wait (&sem);

    libvlc_event_detach(p_em, libvlc_MediaParsedChanged, finished_event, &sem);

    vlc_sem_destroy (&sem);
}
