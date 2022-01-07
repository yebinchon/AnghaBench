
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* Distance; struct TYPE_5__** Next; } ;
struct TYPE_6__ {scalar_t__ NodeCount; scalar_t__ MaximumLevel; TYPE_1__ Head; } ;
typedef TYPE_1__* PSKIPLIST_NODE ;
typedef TYPE_2__* PSKIPLIST ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ CHAR ;



PSKIPLIST_NODE
LookupNodeByIndexSkiplist(PSKIPLIST Skiplist, DWORD ElementIndex)
{
    CHAR i;
    DWORD dwIndex = 0;
    PSKIPLIST_NODE pNode = &Skiplist->Head;


    if (ElementIndex >= Skiplist->NodeCount)
        return ((void*)0);






    for (i = Skiplist->MaximumLevel + 1; --i >= 0;)
    {


        while (pNode->Next[i] && dwIndex + pNode->Distance[i] <= ElementIndex)
        {
            dwIndex += pNode->Distance[i];
            pNode = pNode->Next[i];
        }
    }


    return pNode->Next[0];
}
