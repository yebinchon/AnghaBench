
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* Flink; } ;
struct TYPE_7__ {int pwszName; } ;
typedef TYPE_1__* PLOCAL_PRINT_PROCESSOR ;
typedef TYPE_2__* PLIST_ENTRY ;
typedef int PCWSTR ;


 TYPE_1__* CONTAINING_RECORD (TYPE_2__*,int ,int ) ;
 int Entry ;
 int LOCAL_PRINT_PROCESSOR ;
 int TRACE (char*,int ) ;
 TYPE_2__ _PrintProcessorList ;
 scalar_t__ wcsicmp (int ,int ) ;

PLOCAL_PRINT_PROCESSOR
FindPrintProcessor(PCWSTR pwszName)
{
    PLIST_ENTRY pEntry;
    PLOCAL_PRINT_PROCESSOR pPrintProcessor;

    TRACE("FindPrintProcessor(%S)\n", pwszName);

    if (!pwszName)
        return ((void*)0);

    for (pEntry = _PrintProcessorList.Flink; pEntry != &_PrintProcessorList; pEntry = pEntry->Flink)
    {
        pPrintProcessor = CONTAINING_RECORD(pEntry, LOCAL_PRINT_PROCESSOR, Entry);

        if (wcsicmp(pPrintProcessor->pwszName, pwszName) == 0)
            return pPrintProcessor;
    }

    return ((void*)0);
}
