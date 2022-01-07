
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {scalar_t__ LesserChild; struct TYPE_4__* IndexEntry; } ;
typedef TYPE_1__* PB_TREE_KEY ;


 int DestroyBTreeNode (scalar_t__) ;
 int ExFreePoolWithTag (TYPE_1__*,int ) ;
 int TAG_NTFS ;

VOID
DestroyBTreeKey(PB_TREE_KEY Key)
{
    if (Key->IndexEntry)
        ExFreePoolWithTag(Key->IndexEntry, TAG_NTFS);

    if (Key->LesserChild)
        DestroyBTreeNode(Key->LesserChild);

    ExFreePoolWithTag(Key, TAG_NTFS);
}
