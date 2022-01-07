
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_t ;
typedef int libvlc_media_list_t ;
typedef int libvlc_media_list_player_t ;
typedef int libvlc_instance_t ;


 int assert (int *) ;
 int libvlc_media_list_add_media (int *,int *) ;
 int * libvlc_media_list_new (int *) ;
 int * libvlc_media_list_player_new (int *) ;
 int libvlc_media_list_player_pause (int *) ;
 int libvlc_media_list_player_play_item (int *,int *) ;
 int libvlc_media_list_player_release (int *) ;
 int libvlc_media_list_player_set_media_list (int *,int *) ;
 int * libvlc_media_new_path (int *,char const*) ;
 int libvlc_media_release (int *) ;
 int * libvlc_new (int,char const**) ;
 int libvlc_release (int *) ;
 int stop_and_wait (int *) ;
 char* test_default_sample ;
 int test_log (char*,char const*) ;
 int wait_playing (int *) ;

__attribute__((used)) static void test_media_list_player_pause_stop(const char** argv, int argc)
{
    libvlc_instance_t *vlc;
    libvlc_media_t *md;
    libvlc_media_list_t *ml;
    libvlc_media_list_player_t *mlp;

    const char * file = test_default_sample;

    test_log ("Testing play and pause of %s using the media list.\n", file);

    vlc = libvlc_new (argc, argv);
    assert (vlc != ((void*)0));

    md = libvlc_media_new_path (vlc, file);
    assert(md);

    ml = libvlc_media_list_new (vlc);
    assert (ml != ((void*)0));

    mlp = libvlc_media_list_player_new (vlc);
    assert(mlp);

    libvlc_media_list_add_media( ml, md);

    libvlc_media_list_player_set_media_list( mlp, ml );

    libvlc_media_list_player_play_item( mlp, md );

    wait_playing (mlp);

    libvlc_media_list_player_pause (mlp);

    stop_and_wait (mlp);

    libvlc_media_release (md);
    libvlc_media_list_player_release (mlp);
    libvlc_release (vlc);
}
