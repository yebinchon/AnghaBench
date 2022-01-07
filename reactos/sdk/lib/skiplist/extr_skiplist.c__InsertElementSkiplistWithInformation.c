
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void** Distance; struct TYPE_6__** Next; int Element; } ;
struct TYPE_7__ {size_t MaximumLevel; void* NodeCount; TYPE_1__* (* AllocateRoutine ) (int) ;TYPE_1__ Head; } ;
typedef int SKIPLIST_NODE ;
typedef int PVOID ;
typedef TYPE_1__* PSKIPLIST_NODE ;
typedef TYPE_2__* PSKIPLIST ;
typedef void* DWORD ;
typedef size_t CHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 size_t _GetRandomLevel () ;
 TYPE_1__* stub1 (int) ;

__attribute__((used)) static BOOL
_InsertElementSkiplistWithInformation(PSKIPLIST Skiplist, PVOID Element, PSKIPLIST_NODE* pUpdate, DWORD* dwDistance)
{
    CHAR chNewLevel;
    CHAR i;
    PSKIPLIST_NODE pNode;


    chNewLevel = _GetRandomLevel();


    if (chNewLevel > Skiplist->MaximumLevel)
    {



        for (i = Skiplist->MaximumLevel + 1; i <= chNewLevel; i++)
        {
            pUpdate[i] = &Skiplist->Head;
            pUpdate[i]->Distance[i] = Skiplist->NodeCount + 1;
        }


        Skiplist->MaximumLevel = chNewLevel;
    }


    pNode = Skiplist->AllocateRoutine(sizeof(SKIPLIST_NODE));
    if (!pNode)
        return FALSE;

    pNode->Element = Element;


    for (i = 0; i <= chNewLevel; i++)
    {
        pNode->Next[i] = pUpdate[i]->Next[i];
        pUpdate[i]->Next[i] = pNode;




        pNode->Distance[i] = dwDistance[i] + (pUpdate[i]->Distance[i] - dwDistance[0]);


        pUpdate[i]->Distance[i] = dwDistance[0] + 1 - dwDistance[i];
    }


    for (i = chNewLevel + 1; i <= Skiplist->MaximumLevel; i++)
        ++pUpdate[i]->Distance[i];


    ++Skiplist->NodeCount;
    return TRUE;
}
