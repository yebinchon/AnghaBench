
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef int USHORT ;
struct TYPE_3__ {int InputCodePage; } ;
typedef int * PWCHAR ;
typedef scalar_t__ PVOID ;
typedef int* PUSHORT ;
typedef TYPE_1__* PCONSRV_CONSOLE ;
typedef int BOOLEAN ;


 int ASSERT (int ) ;
 int * ConsoleAllocHeap (int ,int) ;
 int FALSE ;
 int MultiByteToWideChar (int ,int ,scalar_t__,int ,int *,int) ;
 int TRUE ;

BOOLEAN
ConvertInputAnsiToUnicode(PCONSRV_CONSOLE Console,
                          PVOID Source,
                          USHORT SourceLength,

                          PWCHAR* Target,
                          PUSHORT TargetLength)
{
    ASSERT(Source && Target && TargetLength);


    *TargetLength = MultiByteToWideChar(Console->InputCodePage, 0,
                                        Source, SourceLength,
                                        ((void*)0), 0);
    *Target = ConsoleAllocHeap(0, *TargetLength * sizeof(WCHAR));
    if (*Target == ((void*)0)) return FALSE;

    MultiByteToWideChar(Console->InputCodePage, 0,
                        Source, SourceLength,
                        *Target, *TargetLength);


    *TargetLength *= sizeof(WCHAR);

    return TRUE;
}
