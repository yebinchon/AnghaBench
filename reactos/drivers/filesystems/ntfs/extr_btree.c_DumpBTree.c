
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {int RootNode; } ;
typedef TYPE_1__* PB_TREE ;


 int DbgPrint (char*,TYPE_1__*) ;
 int DumpBTreeNode (TYPE_1__*,int ,int ,int ) ;

VOID
DumpBTree(PB_TREE Tree)
{
    DbgPrint("B_TREE @ %p\n", Tree);
    DumpBTreeNode(Tree, Tree->RootNode, 0, 0);
}
