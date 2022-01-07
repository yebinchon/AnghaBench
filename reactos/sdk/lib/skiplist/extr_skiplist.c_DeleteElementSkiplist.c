
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* Distance; struct TYPE_5__** Next; int * Element; } ;
struct TYPE_6__ {int MaximumLevel; scalar_t__ (* CompareRoutine ) (int *,int *) ;int NodeCount; TYPE_1__ Head; int (* FreeRoutine ) (TYPE_1__*) ;} ;
typedef int * PVOID ;
typedef TYPE_1__* PSKIPLIST_NODE ;
typedef TYPE_2__* PSKIPLIST ;
typedef scalar_t__ CHAR ;


 int SKIPLIST_LEVELS ;
 scalar_t__ stub1 (int *,int *) ;
 scalar_t__ stub2 (int *,int *) ;
 int stub3 (TYPE_1__*) ;

PVOID
DeleteElementSkiplist(PSKIPLIST Skiplist, PVOID Element)
{
    CHAR i;
    PSKIPLIST_NODE pLastComparedNode = ((void*)0);
    PSKIPLIST_NODE pNode = &Skiplist->Head;
    PSKIPLIST_NODE pUpdate[SKIPLIST_LEVELS];
    PVOID pReturnValue;



    for (i = Skiplist->MaximumLevel + 1; --i >= 0;)
    {
        while (pNode->Next[i] && pNode->Next[i] != pLastComparedNode && Skiplist->CompareRoutine(pNode->Next[i]->Element, Element) < 0)
            pNode = pNode->Next[i];


        pLastComparedNode = pNode->Next[i];
        pUpdate[i] = pNode;
    }


    pNode = pNode->Next[0];
    if (!pNode || Skiplist->CompareRoutine(pNode->Element, Element) != 0)
    {

        return ((void*)0);
    }



    for (i = 0; i <= Skiplist->MaximumLevel && pUpdate[i]->Next[i] == pNode; i++)
    {
        pUpdate[i]->Distance[i] += pNode->Distance[i] - 1;
        pUpdate[i]->Next[i] = pNode->Next[i];
    }


    while (i <= Skiplist->MaximumLevel)
    {
        --pUpdate[i]->Distance[i];
        i++;
    }


    pReturnValue = pNode->Element;
    Skiplist->FreeRoutine(pNode);


    while (Skiplist->MaximumLevel > 0 && !Skiplist->Head.Next[Skiplist->MaximumLevel])
        --Skiplist->MaximumLevel;


    --Skiplist->NodeCount;
    return pReturnValue;
}
