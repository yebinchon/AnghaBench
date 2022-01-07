
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct check_items_order_data {int index; int count; int done_playing; int ** items; } ;
typedef int libvlc_media_t ;
struct TYPE_5__ {int * item; } ;
struct TYPE_6__ {TYPE_1__ media_list_player_next_item_set; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
typedef TYPE_3__ libvlc_event_t ;


 int assert (int) ;
 int free (char*) ;
 char* libvlc_media_get_meta (int *,int ) ;
 int libvlc_meta_Title ;
 int test_log (char*,...) ;

__attribute__((used)) static void check_items_order_callback(const libvlc_event_t * p_event, void * user_data)
{
    struct check_items_order_data *checks = user_data;
    libvlc_media_t *md = p_event->u.media_list_player_next_item_set.item;
    assert(checks->index < checks->count);
    if (checks->items[checks->index] != md)
    {
        char *title = libvlc_media_get_meta(md, libvlc_meta_Title);
        test_log ("Got items %s\n", title);
        free(title);
    }
    assert(checks->items[checks->index] == md);

    char *title = libvlc_media_get_meta(md, libvlc_meta_Title);
    test_log ("Item %d '%s' was correctly queued\n", checks->index, title);
    free(title);

    if (checks->index == (checks->count - 1))
    {
        test_log ("Done playing with success\n");
        checks->done_playing = 1;
    }
    checks->index++;
}
