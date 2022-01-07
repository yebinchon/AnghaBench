
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* entries; } ;
typedef TYPE_2__ TransactedSnapshotImpl ;
struct TYPE_6__ {size_t dirRootEntry; size_t rightChild; } ;
struct TYPE_8__ {size_t parent; TYPE_1__ data; } ;
typedef TYPE_3__ TransactedDirEntry ;
typedef size_t DirRef ;


 size_t DIRENTRY_NULL ;
 size_t TransactedSnapshotImpl_FindFirstChild (TYPE_2__*,size_t) ;

__attribute__((used)) static DirRef TransactedSnapshotImpl_FindNextChild(
  TransactedSnapshotImpl* This, DirRef current)
{
  DirRef parent;
  TransactedDirEntry *parent_entry;

  parent = This->entries[current].parent;
  parent_entry = &This->entries[parent];

  if (parent != DIRENTRY_NULL && parent_entry->data.dirRootEntry != current)
  {
    if (parent_entry->data.rightChild != current && parent_entry->data.rightChild != DIRENTRY_NULL)
    {
      This->entries[parent_entry->data.rightChild].parent = parent;
      return TransactedSnapshotImpl_FindFirstChild(This, parent_entry->data.rightChild);
    }

    if (parent_entry->data.dirRootEntry != DIRENTRY_NULL)
    {
      This->entries[parent_entry->data.dirRootEntry].parent = parent;
      return TransactedSnapshotImpl_FindFirstChild(This, parent_entry->data.dirRootEntry);
    }
  }

  return parent;
}
