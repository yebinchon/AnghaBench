
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int paddr_t ;


 int SetPhys (int,int) ;
 scalar_t__ _mmumain ;
 int* trap_end ;
 int* trap_start ;

void copy_trap_handler(int trap)
{
    int i;
    paddr_t targetArea = trap * 0x100;


    trap_end[0] = (int)_mmumain;

    for (i = 0; i <= trap_end - trap_start; i++)
    {
        SetPhys(targetArea + (i * sizeof(int)), trap_start[i]);
    }
}
