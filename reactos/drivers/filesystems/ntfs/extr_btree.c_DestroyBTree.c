
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int RootNode; } ;
typedef TYPE_1__* PB_TREE ;


 int DestroyBTreeNode (int ) ;
 int ExFreePoolWithTag (TYPE_1__*,int ) ;
 int TAG_NTFS ;

VOID
DestroyBTree(PB_TREE Tree)
{
    DestroyBTreeNode(Tree->RootNode);
    ExFreePoolWithTag(Tree, TAG_NTFS);
}
