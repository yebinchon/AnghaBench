
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_sem_t ;
typedef int libvlc_media_t ;
typedef scalar_t__ libvlc_media_parsed_status_t ;
typedef int libvlc_media_parse_flag_t ;
typedef int libvlc_instance_t ;
typedef int libvlc_event_manager_t ;


 int assert (int) ;
 int libvlc_MediaParsedChanged ;
 int libvlc_event_attach (int *,int ,int ,int *) ;
 int * libvlc_media_event_manager (int *) ;
 scalar_t__ libvlc_media_get_parsed_status (int *) ;
 int * libvlc_media_new_location (int *,char const*) ;
 int * libvlc_media_new_path (int *,char const*) ;
 int libvlc_media_parse_with_options (int *,int ,int) ;
 scalar_t__ libvlc_media_parsed_status_done ;
 int libvlc_media_release (int *) ;
 int media_parse_ended ;
 int print_media (int *) ;
 int test_log (char*,char const*,scalar_t__) ;
 int vlc_sem_destroy (int *) ;
 int vlc_sem_init (int *,int ) ;
 int vlc_sem_wait (int *) ;

__attribute__((used)) static void test_media_preparsed(libvlc_instance_t *vlc, const char *path,
                                 const char *location,
                                 libvlc_media_parse_flag_t parse_flags,
                                 libvlc_media_parsed_status_t i_expected_status)
{
    test_log ("test_media_preparsed: %s, expected: %d\n", path ? path : location,
              i_expected_status);

    libvlc_media_t *media;
    if (path != ((void*)0))
        media = libvlc_media_new_path (vlc, path);
    else
        media = libvlc_media_new_location (vlc, location);
    assert (media != ((void*)0));

    vlc_sem_t sem;
    vlc_sem_init (&sem, 0);


    libvlc_event_manager_t *em = libvlc_media_event_manager (media);
    libvlc_event_attach (em, libvlc_MediaParsedChanged, media_parse_ended, &sem);


    int i_ret = libvlc_media_parse_with_options(media, parse_flags, -1);
    assert(i_ret == 0);


    vlc_sem_wait (&sem);
    vlc_sem_destroy (&sem);


    assert (libvlc_media_get_parsed_status(media) == i_expected_status);
    if (i_expected_status == libvlc_media_parsed_status_done)
        print_media(media);

    libvlc_media_release (media);
}
