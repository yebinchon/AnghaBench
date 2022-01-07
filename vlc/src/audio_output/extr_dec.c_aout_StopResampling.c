
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int audio_output_t ;
struct TYPE_4__ {int resamp_type; } ;
struct TYPE_5__ {int filters; TYPE_1__ sync; } ;
typedef TYPE_2__ aout_owner_t ;


 int AOUT_RESAMPLING_NONE ;
 int aout_FiltersAdjustResampling (int ,int ) ;
 TYPE_2__* aout_owner (int *) ;

__attribute__((used)) static void aout_StopResampling (audio_output_t *aout)
{
    aout_owner_t *owner = aout_owner (aout);

    owner->sync.resamp_type = AOUT_RESAMPLING_NONE;
    aout_FiltersAdjustResampling (owner->filters, 0);
}
