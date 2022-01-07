
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float output_factor; } ;
typedef TYPE_1__ aout_volume_t ;


 scalar_t__ unlikely (int ) ;

void aout_volume_SetVolume(aout_volume_t *vol, float factor)
{
    if (unlikely(vol == ((void*)0)))
        return;

    vol->output_factor = factor;
}
