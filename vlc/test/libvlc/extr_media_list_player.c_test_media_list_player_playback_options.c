
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int * p_subitems; } ;
typedef TYPE_1__ libvlc_media_t ;
typedef int libvlc_media_list_t ;
typedef TYPE_1__ libvlc_media_list_player_t ;
typedef int libvlc_instance_t ;


 int assert (TYPE_1__*) ;
 int libvlc_media_list_add_media (int *,TYPE_1__*) ;
 int * libvlc_media_list_new (int *) ;
 scalar_t__ libvlc_media_list_player_is_playing (TYPE_1__*) ;
 TYPE_1__* libvlc_media_list_player_new (int *) ;
 int libvlc_media_list_player_play_item (TYPE_1__*,TYPE_1__*) ;
 int libvlc_media_list_player_release (TYPE_1__*) ;
 int libvlc_media_list_player_set_media_list (TYPE_1__*,int *) ;
 int libvlc_media_list_player_set_playback_mode (TYPE_1__*,int ) ;
 int libvlc_media_list_player_stop_async (TYPE_1__*) ;
 TYPE_1__* libvlc_media_new_path (int *,char const*) ;
 int libvlc_media_release (TYPE_1__*) ;
 int * libvlc_new (int,char const**) ;
 int libvlc_playback_mode_default ;
 int libvlc_playback_mode_loop ;
 int libvlc_playback_mode_repeat ;
 int libvlc_release (int *) ;
 int media_list_add_file_path (int *,int *,char const*) ;
 int sched_yield () ;
 int stop_and_wait (TYPE_1__*) ;
 char* test_default_sample ;
 int test_log (char*) ;
 int wait_playing (TYPE_1__*) ;

__attribute__((used)) static void test_media_list_player_playback_options (const char** argv, int argc)
{
    libvlc_instance_t *vlc;
    libvlc_media_t *md;
    libvlc_media_t *md2;
    libvlc_media_t *md3;
    libvlc_media_t *md4;
    libvlc_media_t *md5;
    libvlc_media_list_t *ml;
    libvlc_media_list_t *ml2;
    libvlc_media_list_t *ml3;
    libvlc_media_list_t *ml4;
    libvlc_media_list_t *ml5;
    libvlc_media_list_t *ml6;
    libvlc_media_list_player_t *mlp;

    const char * file = test_default_sample;

    test_log ("Testing media player playback options()\n");

    vlc = libvlc_new (argc, argv);
    assert (vlc != ((void*)0));
    md = libvlc_media_new_path (vlc, file);
    assert(md);

    md2 = libvlc_media_new_path (vlc, file);
    assert(md2);

    md3 = libvlc_media_new_path (vlc, file);
    assert(md3);

    md4 = libvlc_media_new_path (vlc, file);
    assert(md4);

    md5 = libvlc_media_new_path (vlc, file);
    assert(md5);

    ml = libvlc_media_list_new (vlc);
    assert (ml != ((void*)0));

    ml2 = libvlc_media_list_new (vlc);
    assert (ml2 != ((void*)0));

    ml3 = libvlc_media_list_new (vlc);
    assert (ml3 != ((void*)0));

    ml4 = libvlc_media_list_new (vlc);
    assert (ml4 != ((void*)0));

    ml5 = libvlc_media_list_new (vlc);
    assert (ml5 != ((void*)0));

    ml6 = libvlc_media_list_new (vlc);
    assert (ml6 != ((void*)0));

    media_list_add_file_path (vlc, ml2, file);
    media_list_add_file_path (vlc, ml2, file);

    media_list_add_file_path (vlc, ml3, file);
    media_list_add_file_path (vlc, ml3, file);
    libvlc_media_list_add_media (ml3, md4);
    media_list_add_file_path (vlc, ml3, file);
    media_list_add_file_path (vlc, ml3, file);
    media_list_add_file_path (vlc, ml3, file);
    libvlc_media_list_add_media (ml3, md5);

    media_list_add_file_path (vlc, ml4, file);
    media_list_add_file_path (vlc, ml4, file);
    media_list_add_file_path (vlc, ml4, file);

    media_list_add_file_path (vlc, ml5, file);

    media_list_add_file_path (vlc, ml6, file);
    media_list_add_file_path (vlc, ml6, file);

    md->p_subitems = ml2;
    md2->p_subitems = ml3;
    md3->p_subitems = ml4;
    md4->p_subitems = ml5;
    md5->p_subitems = ml6;

    libvlc_media_list_add_media (ml, md);
    libvlc_media_list_add_media (ml, md2);
    libvlc_media_list_add_media (ml, md3);

    mlp = libvlc_media_list_player_new (vlc);
    assert(mlp);

    libvlc_media_list_player_set_media_list (mlp, ml);


    libvlc_media_list_player_set_playback_mode(mlp, libvlc_playback_mode_default);

    libvlc_media_list_player_play_item (mlp, md);

    wait_playing (mlp);

    libvlc_media_release (md);
    libvlc_media_release (md2);
    libvlc_media_release (md3);
    libvlc_media_release (md4);
    libvlc_media_release (md5);

    libvlc_media_list_player_stop_async (mlp);

    while (libvlc_media_list_player_is_playing (mlp))
        sched_yield();


    test_log ("Testing media player playback option - Loop\n");
    libvlc_media_list_player_set_playback_mode(mlp, libvlc_playback_mode_loop);

    libvlc_media_list_player_play_item (mlp, md);

    wait_playing (mlp);

    stop_and_wait (mlp);


    test_log ("Testing media player playback option - Repeat\n");
    libvlc_media_list_player_set_playback_mode(mlp, libvlc_playback_mode_repeat);

    libvlc_media_list_player_play_item (mlp, md);

    wait_playing (mlp);

    stop_and_wait (mlp);

    libvlc_media_list_player_release (mlp);
    libvlc_release (vlc);
}
