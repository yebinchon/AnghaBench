
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_8__ {scalar_t__ ComSpecPsp; } ;
struct TYPE_7__ {struct TYPE_7__* Flink; } ;
typedef TYPE_1__* PLIST_ENTRY ;
typedef TYPE_2__* PCOMSPEC_INFO ;


 int COMSPEC_INFO ;
 TYPE_2__* CONTAINING_RECORD (TYPE_1__*,int ,int ) ;
 TYPE_1__ ComSpecInfoList ;
 int Entry ;

__attribute__((used)) static PCOMSPEC_INFO
FindComSpecInfoByPsp(WORD Psp)
{
    PLIST_ENTRY Pointer;
    PCOMSPEC_INFO ComSpecInfo;

    for (Pointer = ComSpecInfoList.Flink; Pointer != &ComSpecInfoList; Pointer = Pointer->Flink)
    {
        ComSpecInfo = CONTAINING_RECORD(Pointer, COMSPEC_INFO, Entry);
        if (ComSpecInfo->ComSpecPsp == Psp) return ComSpecInfo;
    }

    return ((void*)0);
}
