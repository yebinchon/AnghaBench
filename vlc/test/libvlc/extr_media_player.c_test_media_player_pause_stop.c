
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_t ;
typedef int libvlc_media_player_t ;
typedef int libvlc_instance_t ;


 int assert (int ) ;
 int * libvlc_media_new_path (int *,char const*) ;
 int * libvlc_media_player_new_from_media (int *) ;
 int libvlc_media_player_release (int *) ;
 int libvlc_media_player_stop_async (int *) ;
 int libvlc_media_release (int *) ;
 int * libvlc_new (int,char const**) ;
 int libvlc_release (int *) ;
 int pause_and_wait (int *) ;
 int play_and_wait (int *) ;
 int test_audio_video (int *) ;
 char* test_default_sample ;
 int test_log (char*,char const*) ;
 int test_role (int *) ;

__attribute__((used)) static void test_media_player_pause_stop(const char** argv, int argc)
{
    libvlc_instance_t *vlc;
    libvlc_media_t *md;
    libvlc_media_player_t *mi;
    const char * file = test_default_sample;

    test_log ("Testing pause and stop of %s\n", file);

    vlc = libvlc_new (argc, argv);
    assert (vlc != ((void*)0));

    md = libvlc_media_new_path (vlc, file);
    assert (md != ((void*)0));

    mi = libvlc_media_player_new_from_media (md);
    assert (mi != ((void*)0));

    libvlc_media_release (md);

    test_audio_video(mi);
    test_role(mi);

    play_and_wait(mi);
    test_audio_video(mi);

    pause_and_wait(mi);
    test_audio_video(mi);

    libvlc_media_player_stop_async (mi);
    test_audio_video(mi);

    libvlc_media_player_release (mi);
    libvlc_release (vlc);
}
