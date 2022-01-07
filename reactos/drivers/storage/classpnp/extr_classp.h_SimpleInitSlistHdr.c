
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int * Next; } ;
typedef TYPE_1__ SLIST_ENTRY ;



__attribute__((used)) static inline VOID SimpleInitSlistHdr(SLIST_ENTRY *SListHdr)
{
    SListHdr->Next = ((void*)0);
}
