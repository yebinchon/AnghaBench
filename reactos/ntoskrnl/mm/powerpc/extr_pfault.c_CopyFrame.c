
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppc_trap_frame_t ;


 int GetPhys (int) ;

void CopyFrame(int *oldframe, int *ourframe)
{
    int i;

    for (i = 0; i < sizeof(ppc_trap_frame_t) / sizeof(int); i++)
    {
        ourframe[i] = GetPhys((int)&oldframe[i]);
    }
}
