
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_meta_type_t ;
struct TYPE_3__ {int p_meta; int lock; } ;
typedef TYPE_1__ input_item_t ;


 char const* vlc_meta_Get (int ,int ) ;
 int vlc_mutex_assert (int *) ;

const char *input_item_GetMetaLocked(input_item_t *item,
                                     vlc_meta_type_t meta_type)
{
    vlc_mutex_assert(&item->lock);

    if (!item->p_meta)
        return ((void*)0);

    return vlc_meta_Get(item->p_meta, meta_type);
}
