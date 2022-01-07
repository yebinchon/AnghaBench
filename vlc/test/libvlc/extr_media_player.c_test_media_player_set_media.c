
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_t ;
typedef int libvlc_media_player_t ;
typedef int libvlc_instance_t ;


 int assert (int ) ;
 int * libvlc_media_new_path (int *,char const*) ;
 int * libvlc_media_player_new (int *) ;
 int libvlc_media_player_release (int *) ;
 int libvlc_media_player_set_media (int *,int *) ;
 int libvlc_media_player_stop_async (int *) ;
 int libvlc_media_release (int *) ;
 int * libvlc_new (int,char const**) ;
 int libvlc_release (int *) ;
 int play_and_wait (int *) ;
 char* test_default_sample ;
 int test_log (char*) ;

__attribute__((used)) static void test_media_player_set_media(const char** argv, int argc)
{
    const char * file = test_default_sample;

    test_log ("Testing set_media\n");

    libvlc_instance_t *vlc = libvlc_new (argc, argv);
    assert (vlc != ((void*)0));

    libvlc_media_t *md = libvlc_media_new_path (vlc, file);
    assert (md != ((void*)0));

    libvlc_media_player_t *mp = libvlc_media_player_new (vlc);
    assert (mp != ((void*)0));

    libvlc_media_player_set_media (mp, md);

    libvlc_media_release (md);

    play_and_wait(mp);

    libvlc_media_player_stop_async (mp);
    libvlc_media_player_release (mp);
    libvlc_release (vlc);
}
