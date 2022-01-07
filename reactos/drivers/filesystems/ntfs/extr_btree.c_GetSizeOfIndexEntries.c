
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_7__ {scalar_t__ KeyCount; TYPE_2__* FirstKey; } ;
struct TYPE_6__ {struct TYPE_6__* NextKey; TYPE_1__* IndexEntry; } ;
struct TYPE_5__ {scalar_t__ Length; } ;
typedef TYPE_2__* PB_TREE_KEY ;
typedef TYPE_3__* PB_TREE_FILENAME_NODE ;


 int ASSERT (int) ;

ULONG
GetSizeOfIndexEntries(PB_TREE_FILENAME_NODE Node)
{

    ULONG NodeSize = 0;


    PB_TREE_KEY CurrentKey = Node->FirstKey;
    ULONG i;
    for (i = 0; i < Node->KeyCount; i++)
    {
        ASSERT(CurrentKey->IndexEntry->Length != 0);


        NodeSize += CurrentKey->IndexEntry->Length;
        CurrentKey = CurrentKey->NextKey;
    }

    return NodeSize;
}
