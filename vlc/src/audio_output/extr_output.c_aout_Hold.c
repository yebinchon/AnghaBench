
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int audio_output_t ;
struct TYPE_3__ {int refs; } ;
typedef TYPE_1__ aout_owner_t ;


 TYPE_1__* aout_owner (int *) ;
 int atomic_fetch_add_explicit (int *,int,int ) ;
 int memory_order_relaxed ;

audio_output_t *aout_Hold(audio_output_t *aout)
{
    aout_owner_t *owner = aout_owner(aout);

    atomic_fetch_add_explicit(&owner->refs, 1, memory_order_relaxed);
    return aout;
}
