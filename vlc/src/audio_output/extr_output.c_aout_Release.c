
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int audio_output_t ;
struct TYPE_7__ {int lock; } ;
struct TYPE_8__ {TYPE_4__* list; int lock; } ;
struct TYPE_9__ {int lock; TYPE_1__ vp; TYPE_2__ dev; int refs; } ;
typedef TYPE_3__ aout_owner_t ;
struct TYPE_10__ {struct TYPE_10__* name; struct TYPE_10__* next; } ;
typedef TYPE_4__ aout_dev_t ;


 int VLC_OBJECT (int *) ;
 TYPE_3__* aout_owner (int *) ;
 scalar_t__ atomic_fetch_sub_explicit (int *,int,int ) ;
 int atomic_thread_fence (int ) ;
 int free (TYPE_4__*) ;
 int memory_order_acquire ;
 int memory_order_release ;
 int vlc_mutex_destroy (int *) ;
 int vlc_object_delete (int ) ;

void aout_Release(audio_output_t *aout)
{
    aout_owner_t *owner = aout_owner(aout);

    if (atomic_fetch_sub_explicit(&owner->refs, 1, memory_order_release))
        return;

    atomic_thread_fence(memory_order_acquire);

    vlc_mutex_destroy (&owner->dev.lock);
    for (aout_dev_t *dev = owner->dev.list, *next; dev != ((void*)0); dev = next)
    {
        next = dev->next;
        free (dev->name);
        free (dev);
    }

    vlc_mutex_destroy (&owner->vp.lock);
    vlc_mutex_destroy (&owner->lock);
    vlc_object_delete(VLC_OBJECT(aout));
}
