
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int audio_output_t ;
struct TYPE_3__ {int restart; } ;
typedef TYPE_1__ aout_owner_t ;


 TYPE_1__* aout_owner (int *) ;
 int atomic_fetch_or_explicit (int *,unsigned int,int ) ;
 int memory_order_release ;
 int msg_Dbg (int *,char*,unsigned int) ;

void aout_RequestRestart (audio_output_t *aout, unsigned mode)
{
    aout_owner_t *owner = aout_owner (aout);
    atomic_fetch_or_explicit(&owner->restart, mode, memory_order_release);
    msg_Dbg (aout, "restart requested (%u)", mode);
}
