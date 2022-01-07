
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppc_trap_frame_t ;



int ignore(int trapCode, ppc_trap_frame_t *trap)
{
    return 1;
}
