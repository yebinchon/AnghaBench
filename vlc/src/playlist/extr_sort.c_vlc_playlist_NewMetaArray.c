
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; int * data; } ;
struct TYPE_5__ {TYPE_1__ items; } ;
typedef TYPE_2__ vlc_playlist_t ;
struct vlc_playlist_sort_criterion {int dummy; } ;
struct vlc_playlist_item_meta {int dummy; } ;


 scalar_t__ unlikely (int) ;
 struct vlc_playlist_item_meta** vlc_alloc (size_t,int) ;
 int vlc_playlist_DeleteMetaArray (struct vlc_playlist_item_meta**,size_t) ;
 struct vlc_playlist_item_meta* vlc_playlist_item_meta_New (int ,struct vlc_playlist_sort_criterion const*,size_t) ;

__attribute__((used)) static struct vlc_playlist_item_meta **
vlc_playlist_NewMetaArray(vlc_playlist_t *playlist,
        const struct vlc_playlist_sort_criterion criteria[], size_t count)
{
    struct vlc_playlist_item_meta **array =
            vlc_alloc(playlist->items.size, sizeof(*array));

    if (unlikely(!array))
        return ((void*)0);

    size_t i;
    for (i = 0; i < playlist->items.size; ++i)
    {
        array[i] = vlc_playlist_item_meta_New(playlist->items.data[i],
                                              criteria, count);
        if (unlikely(!array[i]))
            break;
    }

    if (i < playlist->items.size)
    {

        vlc_playlist_DeleteMetaArray(array, i);
        return ((void*)0);
    }

    return array;
}
