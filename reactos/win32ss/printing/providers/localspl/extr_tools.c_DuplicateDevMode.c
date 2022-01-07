
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dmDriverExtra; scalar_t__ dmSize; } ;
typedef TYPE_1__* PDEVMODEW ;


 int CopyMemory (TYPE_1__*,TYPE_1__*,scalar_t__) ;
 TYPE_1__* DllAllocSplMem (scalar_t__) ;
 int ERR (char*) ;

PDEVMODEW
DuplicateDevMode(PDEVMODEW pInput)
{
    PDEVMODEW pOutput;


    pOutput = DllAllocSplMem(pInput->dmSize + pInput->dmDriverExtra);
    if (!pOutput)
    {
        ERR("DllAllocSplMem failed!\n");
        return ((void*)0);
    }


    CopyMemory(pOutput, pInput, pInput->dmSize + pInput->dmDriverExtra);

    return pOutput;
}
