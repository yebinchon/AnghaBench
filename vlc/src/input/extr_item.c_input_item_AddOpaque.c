
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; TYPE_2__* opaques; } ;
typedef TYPE_1__ input_item_t ;
struct TYPE_6__ {struct TYPE_6__* next; void* value; int name; } ;
typedef TYPE_2__ input_item_opaque_t ;


 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int assert (int ) ;
 TYPE_2__* malloc (int) ;
 int memcpy (int ,char const*,size_t) ;
 size_t strlen (char const*) ;
 scalar_t__ unlikely (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

int input_item_AddOpaque(input_item_t *item, const char *name, void *value)
{
    assert(name != ((void*)0));

    size_t namelen = strlen(name);
    input_item_opaque_t *entry = malloc(sizeof (*entry) + namelen);
    if (unlikely(entry == ((void*)0)))
        return VLC_ENOMEM;

    memcpy(entry->name, name, namelen + 1);
    entry->value = value;

    vlc_mutex_lock(&item->lock);
    entry->next = item->opaques;
    item->opaques = entry;
    vlc_mutex_unlock(&item->lock);
    return VLC_SUCCESS;
}
