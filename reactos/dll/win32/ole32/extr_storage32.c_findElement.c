
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dirRootEntry; scalar_t__ leftChild; scalar_t__ rightChild; int name; } ;
typedef int StorageBaseImpl ;
typedef int OLECHAR ;
typedef scalar_t__ LONG ;
typedef scalar_t__ DirRef ;
typedef TYPE_1__ DirEntry ;


 scalar_t__ DIRENTRY_NULL ;
 int StorageBaseImpl_ReadDirEntry (int *,scalar_t__,TYPE_1__*) ;
 scalar_t__ entryNameCmp (int const*,int ) ;

__attribute__((used)) static DirRef findElement(StorageBaseImpl *storage, DirRef storageEntry,
    const OLECHAR *name, DirEntry *data)
{
  DirRef currentEntry;


  StorageBaseImpl_ReadDirEntry(storage, storageEntry, data);

  currentEntry = data->dirRootEntry;

  while (currentEntry != DIRENTRY_NULL)
  {
    LONG cmp;

    StorageBaseImpl_ReadDirEntry(storage, currentEntry, data);

    cmp = entryNameCmp(name, data->name);

    if (cmp == 0)

      break;

    else if (cmp < 0)
      currentEntry = data->leftChild;

    else if (cmp > 0)
      currentEntry = data->rightChild;
  }

  return currentEntry;
}
