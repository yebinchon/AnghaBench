
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef scalar_t__ PGDT ;


 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;

PGDT GetGDTPtr(void)
{
ULONG gdtr[2];
PGDT pGdt;

    ENTER_FUNC();

 __asm__("sgdt %0;":"=m" (gdtr));
 pGdt=(PGDT)(((ULONG)(gdtr[1]<<16))|((ULONG)(gdtr[0]>>16)));

    LEAVE_FUNC();

 return pGdt;
}
