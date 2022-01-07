
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
typedef scalar_t__* PULONG ;
typedef TYPE_1__* PTCP_PCB ;



void
LibTCPGetSocketStatus(
    PTCP_PCB pcb,
    PULONG State)
{

    *State = pcb->state + 1;
}
