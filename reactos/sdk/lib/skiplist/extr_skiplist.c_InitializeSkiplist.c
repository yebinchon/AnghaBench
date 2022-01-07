
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Next; } ;
struct TYPE_5__ {TYPE_1__ Head; scalar_t__ NodeCount; scalar_t__ MaximumLevel; int FreeRoutine; int CompareRoutine; int AllocateRoutine; } ;
typedef int PSKIPLIST_FREE_ROUTINE ;
typedef int PSKIPLIST_COMPARE_ROUTINE ;
typedef int PSKIPLIST_ALLOCATE_ROUTINE ;
typedef TYPE_2__* PSKIPLIST ;


 int ZeroMemory (int ,int) ;

void
InitializeSkiplist(PSKIPLIST Skiplist, PSKIPLIST_ALLOCATE_ROUTINE AllocateRoutine, PSKIPLIST_COMPARE_ROUTINE CompareRoutine, PSKIPLIST_FREE_ROUTINE FreeRoutine)
{

    Skiplist->AllocateRoutine = AllocateRoutine;
    Skiplist->CompareRoutine = CompareRoutine;
    Skiplist->FreeRoutine = FreeRoutine;



    Skiplist->MaximumLevel = 0;
    Skiplist->NodeCount = 0;
    ZeroMemory(Skiplist->Head.Next, sizeof(Skiplist->Head.Next));
}
