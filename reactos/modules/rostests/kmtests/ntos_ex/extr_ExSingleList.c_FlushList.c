
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Next; } ;
typedef TYPE_1__* PSINGLE_LIST_ENTRY ;



PSINGLE_LIST_ENTRY FlushList(PSINGLE_LIST_ENTRY ListHead)
{
    PSINGLE_LIST_ENTRY Ret = ListHead->Next;
    ListHead->Next = ((void*)0);
    return Ret;
}
