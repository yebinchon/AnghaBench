
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ ULONG ;
struct TYPE_8__ {scalar_t__ KeyCount; TYPE_1__* FirstKey; } ;
struct TYPE_7__ {struct TYPE_7__* NextKey; } ;
typedef TYPE_1__* PB_TREE_KEY ;
typedef TYPE_2__* PB_TREE_FILENAME_NODE ;


 int DestroyBTreeKey (TYPE_1__*) ;
 int ExFreePoolWithTag (TYPE_2__*,int ) ;
 int NT_ASSERT (TYPE_1__*) ;
 int TAG_NTFS ;

VOID
DestroyBTreeNode(PB_TREE_FILENAME_NODE Node)
{
    PB_TREE_KEY NextKey;
    PB_TREE_KEY CurrentKey = Node->FirstKey;
    ULONG i;
    for (i = 0; i < Node->KeyCount; i++)
    {
        NT_ASSERT(CurrentKey);
        NextKey = CurrentKey->NextKey;
        DestroyBTreeKey(CurrentKey);
        CurrentKey = NextKey;
    }

    NT_ASSERT(NextKey == ((void*)0));

    ExFreePoolWithTag(Node, TAG_NTFS);
}
