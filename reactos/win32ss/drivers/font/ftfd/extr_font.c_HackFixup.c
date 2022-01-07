
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef scalar_t__* PVOID ;
typedef scalar_t__ CHAR ;


 scalar_t__* EngAllocMem (int ,int ,char) ;
 int memcpy (scalar_t__*,scalar_t__*,int ) ;

PVOID
HackFixup(
    PVOID pvView,
    ULONG cjView)
{
    CHAR *pc;

    pc = EngAllocMem(0, cjView, 'tmp ');
    memcpy(pc, pvView, cjView);

    *pc = 0;

    return pc;
}
