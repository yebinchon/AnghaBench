
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int block_t ;
struct TYPE_5__ {int (* amplify ) (TYPE_2__*,int *,float) ;} ;
struct TYPE_4__ {float output_factor; TYPE_2__ object; int gain_factor; int * module; } ;
typedef TYPE_1__ aout_volume_t ;


 int stub1 (TYPE_2__*,int *,float) ;
 scalar_t__ unlikely (int ) ;
 float vlc_atomic_load_float (int *) ;

int aout_volume_Amplify(aout_volume_t *vol, block_t *block)
{
    if (unlikely(vol == ((void*)0)) || vol->module == ((void*)0))
        return -1;

    float amp = vol->output_factor
              * vlc_atomic_load_float (&vol->gain_factor);

    vol->object.amplify(&vol->object, block, amp);
    return 0;
}
