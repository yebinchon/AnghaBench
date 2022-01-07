
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* media; } ;
typedef TYPE_2__ vlc_playlist_item_t ;
struct vlc_playlist_sort_criterion {int dummy; } ;
struct vlc_playlist_item_meta {TYPE_2__* item; } ;
struct TYPE_4__ {int lock; } ;


 int VLC_SUCCESS ;
 struct vlc_playlist_item_meta* calloc (int,int) ;
 int free (struct vlc_playlist_item_meta*) ;
 scalar_t__ unlikely (int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_playlist_item_meta_InitFields (struct vlc_playlist_item_meta*,struct vlc_playlist_sort_criterion const*,size_t) ;

__attribute__((used)) static struct vlc_playlist_item_meta *
vlc_playlist_item_meta_New(vlc_playlist_item_t *item,
                           const struct vlc_playlist_sort_criterion criteria[],
                           size_t count)
{

    struct vlc_playlist_item_meta *meta = calloc(1, sizeof(*meta));
    if (unlikely(!meta))
        return ((void*)0);

    meta->item = item;

    vlc_mutex_lock(&item->media->lock);
    int ret = vlc_playlist_item_meta_InitFields(meta, criteria, count);
    vlc_mutex_unlock(&item->media->lock);

    if (unlikely(ret != VLC_SUCCESS))
    {
        free(meta);
        return ((void*)0);
    }

    return meta;
}
