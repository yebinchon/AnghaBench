
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * Element; struct TYPE_4__** Next; scalar_t__* Distance; } ;
struct TYPE_5__ {scalar_t__ MaximumLevel; scalar_t__ (* CompareRoutine ) (int *,int *) ;TYPE_1__ Head; } ;
typedef int * PVOID ;
typedef TYPE_1__* PSKIPLIST_NODE ;
typedef TYPE_2__* PSKIPLIST ;
typedef int * PDWORD ;
typedef int DWORD ;
typedef scalar_t__ CHAR ;


 scalar_t__ stub1 (int *,int *) ;
 scalar_t__ stub2 (int *,int *) ;

PVOID
LookupElementSkiplist(PSKIPLIST Skiplist, PVOID Element, PDWORD ElementIndex)
{
    CHAR i;
    DWORD dwIndex = 0;
    PSKIPLIST_NODE pLastComparedNode = ((void*)0);
    PSKIPLIST_NODE pNode = &Skiplist->Head;






    for (i = Skiplist->MaximumLevel + 1; --i >= 0;)
    {
        while (pNode->Next[i] && pNode->Next[i] != pLastComparedNode && Skiplist->CompareRoutine(pNode->Next[i]->Element, Element) < 0)
        {
            dwIndex += pNode->Distance[i];
            pNode = pNode->Next[i];
        }


        pLastComparedNode = pNode->Next[i];
    }


    pNode = pNode->Next[0];
    if (!pNode || Skiplist->CompareRoutine(pNode->Element, Element) != 0)
    {

        return ((void*)0);
    }


    if (ElementIndex)
        *ElementIndex = dwIndex;


    return pNode->Element;
}
