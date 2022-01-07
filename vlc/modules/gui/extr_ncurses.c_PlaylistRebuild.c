
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_playlist_t ;
typedef int vlc_playlist_item_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_9__ {size_t size; scalar_t__* data; } ;
struct TYPE_8__ {int need_update; TYPE_3__ pl_item_names; int * playlist; } ;
typedef TYPE_2__ intf_sys_t ;
typedef int input_item_t ;


 int free (void*) ;
 char* input_item_GetTitleFbName (int *) ;
 size_t vlc_playlist_Count (int *) ;
 int * vlc_playlist_Get (int *,size_t) ;
 int * vlc_playlist_item_GetMedia (int *) ;
 int vlc_vector_clear (TYPE_3__*) ;
 int vlc_vector_push (TYPE_3__*,char*) ;
 int vlc_vector_reserve (TYPE_3__*,size_t) ;

__attribute__((used)) static void PlaylistRebuild(intf_thread_t *intf)
{
    intf_sys_t *sys = intf->p_sys;
    vlc_playlist_t *playlist = sys->playlist;

    for (size_t i = 0; i < sys->pl_item_names.size; ++i)
        free((void *)sys->pl_item_names.data[i]);
    vlc_vector_clear(&sys->pl_item_names);

    size_t count = vlc_playlist_Count(playlist);
    if (!vlc_vector_reserve(&sys->pl_item_names, count))
        return;
    for (size_t i = 0; i < count; ++i)
    {
        vlc_playlist_item_t *plitem = vlc_playlist_Get(playlist, i);
        input_item_t *item = vlc_playlist_item_GetMedia(plitem);
        char *name = input_item_GetTitleFbName(item);
        vlc_vector_push(&sys->pl_item_names, name);
    }

    sys->need_update = 0;
}
