
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Next; } ;
typedef TYPE_1__ SLIST_ENTRY ;



__attribute__((used)) static inline SLIST_ENTRY *SimplePopSlist(SLIST_ENTRY *SListHdr)
{
    SLIST_ENTRY *sListEntry = SListHdr->Next;
    if (sListEntry){
        SListHdr->Next = sListEntry->Next;
        sListEntry->Next = ((void*)0);
    }
    return sListEntry;
}
