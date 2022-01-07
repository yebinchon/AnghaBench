
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {int Entry; } ;
typedef TYPE_1__* PCOMSPEC_INFO ;


 int RemoveEntryList (int *) ;
 TYPE_1__ RootCmd ;
 int RtlFreeHeap (int ,int ,TYPE_1__*) ;
 int RtlGetProcessHeap () ;

__attribute__((used)) static VOID
RemoveComSpecInfo(PCOMSPEC_INFO ComSpecInfo)
{
    RemoveEntryList(&ComSpecInfo->Entry);
    if (ComSpecInfo != &RootCmd)
        RtlFreeHeap(RtlGetProcessHeap(), 0, ComSpecInfo);
}
