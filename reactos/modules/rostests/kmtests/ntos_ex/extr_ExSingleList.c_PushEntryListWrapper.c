
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* Next; } ;
typedef TYPE_1__* PSINGLE_LIST_ENTRY ;
typedef int PKSPIN_LOCK ;


 int PushEntryList (TYPE_1__*,TYPE_1__*) ;
 int UNREFERENCED_PARAMETER (int ) ;

PSINGLE_LIST_ENTRY PushEntryListWrapper(PSINGLE_LIST_ENTRY ListHead, PSINGLE_LIST_ENTRY Entry, PKSPIN_LOCK Lock)
{
    PSINGLE_LIST_ENTRY Ret;
    UNREFERENCED_PARAMETER(Lock);
    Ret = ListHead->Next;
    PushEntryList(ListHead, Entry);
    return Ret;
}
