
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * data; } ;
struct TYPE_8__ {TYPE_1__ items; } ;
typedef TYPE_2__ vlc_playlist_t ;
typedef int ssize_t ;
typedef int input_item_t ;
typedef enum input_item_preparse_status { ____Placeholder_input_item_preparse_status } input_item_preparse_status ;


 int ITEM_PREPARSE_DONE ;
 int VLC_UNUSED (int *) ;
 int on_items_updated ;
 int vlc_playlist_IndexOfMedia (TYPE_2__*,int *) ;
 int vlc_playlist_Lock (TYPE_2__*) ;
 int vlc_playlist_Notify (TYPE_2__*,int ,int,int *,int) ;
 int vlc_playlist_Unlock (TYPE_2__*) ;

__attribute__((used)) static void
on_preparse_ended(input_item_t *media,
                  enum input_item_preparse_status status, void *userdata)
{
    VLC_UNUSED(media);
    vlc_playlist_t *playlist = userdata;

    if (status != ITEM_PREPARSE_DONE)
        return;

    vlc_playlist_Lock(playlist);
    ssize_t index = vlc_playlist_IndexOfMedia(playlist, media);
    if (index != -1)
        vlc_playlist_Notify(playlist, on_items_updated, index,
                            &playlist->items.data[index], 1);
    vlc_playlist_Unlock(playlist);
}
