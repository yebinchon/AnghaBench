
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct check_items_order_data {int dummy; } ;
typedef int libvlc_media_t ;
typedef int libvlc_media_list_t ;
typedef int libvlc_media_list_player_t ;
typedef int libvlc_instance_t ;
typedef int libvlc_event_manager_t ;


 int assert (int) ;
 int check_data_init (struct check_items_order_data*) ;
 int check_items_order_callback ;
 int libvlc_MediaListPlayerNextItemSet ;
 int libvlc_event_attach (int *,int ,int ,struct check_items_order_data*) ;
 int libvlc_media_list_add_media (int *,int *) ;
 int * libvlc_media_list_new (int *) ;
 int * libvlc_media_list_player_event_manager (int *) ;
 int * libvlc_media_list_player_new (int *) ;
 int libvlc_media_list_player_play (int *) ;
 int libvlc_media_list_player_release (int *) ;
 int libvlc_media_list_player_set_media_list (int *,int *) ;
 int libvlc_media_list_release (int *) ;
 int * libvlc_media_new_as_node (int *,char*) ;
 int * libvlc_media_new_path (int *,char const*) ;
 int * libvlc_media_subitems (int *) ;
 int * libvlc_new (int,char const**) ;
 int libvlc_release (int *) ;
 int * media_list_add_file_path (int *,int *,char const*) ;
 int queue_expected_item (struct check_items_order_data*,int *) ;
 int stop_and_wait (int *) ;
 char* test_default_sample ;
 int test_log (char*) ;
 int wait_queued_items (struct check_items_order_data*) ;

__attribute__((used)) static void test_media_list_player_items_queue(const char** argv, int argc)
{
    libvlc_instance_t *vlc;
    libvlc_media_t *md;
    libvlc_media_list_t *ml;
    libvlc_media_list_player_t *mlp;

    const char * file = test_default_sample;

    test_log ("Testing media player item queue-ing\n");

    vlc = libvlc_new (argc, argv);
    assert (vlc != ((void*)0));

    md = libvlc_media_new_path (vlc, file);
    assert(md);

    ml = libvlc_media_list_new (vlc);
    assert (ml != ((void*)0));

    mlp = libvlc_media_list_player_new (vlc);
    assert(mlp);

    libvlc_media_list_add_media (ml, md);

    static struct check_items_order_data check;
    check_data_init(&check);
    queue_expected_item(&check, md);


    queue_expected_item(&check, media_list_add_file_path (vlc, ml, file));
    queue_expected_item(&check, media_list_add_file_path (vlc, ml, file));
    queue_expected_item(&check, media_list_add_file_path (vlc, ml, file));


    libvlc_media_t *node = libvlc_media_new_as_node(vlc, "node");
    assert(node);
    libvlc_media_list_add_media(ml, node);
    queue_expected_item(&check, node);


    libvlc_media_list_t *subitems = libvlc_media_subitems(node);
    queue_expected_item(&check, media_list_add_file_path(vlc, subitems, file));
    queue_expected_item(&check, media_list_add_file_path(vlc, subitems, file));
    queue_expected_item(&check, media_list_add_file_path(vlc, subitems, file));
    libvlc_media_list_release(subitems);

    libvlc_media_list_player_set_media_list (mlp, ml);

    libvlc_event_manager_t * em = libvlc_media_list_player_event_manager(mlp);
    int val = libvlc_event_attach(em, libvlc_MediaListPlayerNextItemSet,
                                  check_items_order_callback, &check);
    assert(val == 0);

    libvlc_media_list_player_play(mlp);


    wait_queued_items(&check);

    stop_and_wait (mlp);

    libvlc_media_list_player_release (mlp);
    libvlc_release (vlc);
}
