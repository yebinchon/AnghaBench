
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
typedef scalar_t__ ULONG_PTR ;
struct TYPE_3__ {int InputCodePage; } ;
typedef scalar_t__ PVOID ;
typedef TYPE_1__* PCONSRV_CONSOLE ;
typedef scalar_t__ PCHAR ;
typedef int BOOLEAN ;


 int ASSERT (int) ;
 int TRUE ;
 int WideCharToMultiByte (int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int *,int *) ;

BOOLEAN
ConvertInputUnicodeToAnsi(PCONSRV_CONSOLE Console,
                          PVOID Source,
                          USHORT SourceLength,

                          PCHAR Target,
                               USHORT TargetLength)
{
    ASSERT(Source && Target && TargetLength);







    ASSERT((ULONG_PTR)Source != (ULONG_PTR)Target);
    WideCharToMultiByte(Console->InputCodePage, 0,
                        Source, SourceLength,
                               Target, TargetLength,
                        ((void*)0), ((void*)0));




    return TRUE;
}
