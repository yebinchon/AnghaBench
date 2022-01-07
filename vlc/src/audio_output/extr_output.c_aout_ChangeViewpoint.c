
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_viewpoint_t ;
typedef int audio_output_t ;
struct TYPE_4__ {int lock; int update; int value; } ;
struct TYPE_5__ {TYPE_1__ vp; } ;
typedef TYPE_2__ aout_owner_t ;


 TYPE_2__* aout_owner (int *) ;
 int atomic_store_explicit (int *,int,int ) ;
 int memory_order_relaxed ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void aout_ChangeViewpoint(audio_output_t *aout,
                                 const vlc_viewpoint_t *p_viewpoint)
{
    aout_owner_t *owner = aout_owner(aout);

    vlc_mutex_lock(&owner->vp.lock);
    owner->vp.value = *p_viewpoint;
    atomic_store_explicit(&owner->vp.update, 1, memory_order_relaxed);
    vlc_mutex_unlock(&owner->vp.lock);
}
