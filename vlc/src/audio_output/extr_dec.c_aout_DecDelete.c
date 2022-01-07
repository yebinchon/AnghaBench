
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int audio_output_t ;
struct TYPE_4__ {scalar_t__ i_format; } ;
struct TYPE_5__ {int * volume; int filters; TYPE_1__ mixer_format; } ;
typedef TYPE_2__ aout_owner_t ;


 int aout_DecFlush (int *) ;
 int aout_FiltersDelete (int *,int ) ;
 int aout_OutputDelete (int *) ;
 TYPE_2__* aout_owner (int *) ;
 int aout_volume_Delete (int *) ;

void aout_DecDelete (audio_output_t *aout)
{
    aout_owner_t *owner = aout_owner (aout);

    if (owner->mixer_format.i_format)
    {
        aout_DecFlush(aout);
        aout_FiltersDelete (aout, owner->filters);
        aout_OutputDelete (aout);
    }
    aout_volume_Delete (owner->volume);
    owner->volume = ((void*)0);
}
