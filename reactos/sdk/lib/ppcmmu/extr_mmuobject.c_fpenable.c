
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int srr1; } ;
typedef TYPE_1__ ppc_trap_frame_t ;



int fpenable(int trapCode, ppc_trap_frame_t *trap)
{

        trap->srr1 |= 8192;
        return 1;
}
