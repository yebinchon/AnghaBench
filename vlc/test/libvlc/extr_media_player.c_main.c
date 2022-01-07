
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_defaults_args ;
 int test_defaults_nargs ;
 int test_init () ;
 int test_media_player_pause_stop (int ,int ) ;
 int test_media_player_play_stop (int ,int ) ;
 int test_media_player_set_media (int ,int ) ;

int main (void)
{
    test_init();

    test_media_player_set_media (test_defaults_args, test_defaults_nargs);
    test_media_player_play_stop (test_defaults_args, test_defaults_nargs);
    test_media_player_pause_stop (test_defaults_args, test_defaults_nargs);

    return 0;
}
