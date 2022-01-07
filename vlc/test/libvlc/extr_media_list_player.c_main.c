
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alarm (int) ;
 int test_defaults_args ;
 int test_defaults_nargs ;
 int test_init () ;
 int test_media_list_player_items_queue (int ,int ) ;
 int test_media_list_player_next (int ,int ) ;
 int test_media_list_player_pause_stop (int ,int ) ;
 int test_media_list_player_play_item_at_index (int ,int ) ;
 int test_media_list_player_playback_options (int ,int ) ;
 int test_media_list_player_previous (int ,int ) ;

int main (void)
{
    test_init();


    alarm(6 * 5);

    test_media_list_player_pause_stop (test_defaults_args, test_defaults_nargs);
    test_media_list_player_play_item_at_index (test_defaults_args, test_defaults_nargs);
    test_media_list_player_previous (test_defaults_args, test_defaults_nargs);
    test_media_list_player_next (test_defaults_args, test_defaults_nargs);
    test_media_list_player_items_queue (test_defaults_args, test_defaults_nargs);
    test_media_list_player_playback_options (test_defaults_args, test_defaults_nargs);
    return 0;
}
