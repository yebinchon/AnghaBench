
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_4__ {scalar_t__ dirRootEntry; scalar_t__ leftChild; scalar_t__ rightChild; int name; } ;
typedef int StorageBaseImpl ;
typedef int OLECHAR ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef scalar_t__ DirRef ;
typedef TYPE_1__ DirEntry ;


 scalar_t__ DIRENTRY_NULL ;
 int DIRENTRY_RELATION_DIR ;
 int DIRENTRY_RELATION_NEXT ;
 int DIRENTRY_RELATION_PREVIOUS ;
 int STG_E_FILENOTFOUND ;
 int S_OK ;
 int StorageBaseImpl_ReadDirEntry (int *,scalar_t__,TYPE_1__*) ;
 scalar_t__ entryNameCmp (int const*,int ) ;

__attribute__((used)) static HRESULT findTreeParent(StorageBaseImpl *storage, DirRef storageEntry,
    const OLECHAR *childName, DirEntry *parentData, DirRef *parentEntry,
    ULONG *relation)
{
  DirRef childEntry;
  DirEntry childData;


  StorageBaseImpl_ReadDirEntry(storage, storageEntry, parentData);

  *parentEntry = storageEntry;
  *relation = DIRENTRY_RELATION_DIR;

  childEntry = parentData->dirRootEntry;

  while (childEntry != DIRENTRY_NULL)
  {
    LONG cmp;

    StorageBaseImpl_ReadDirEntry(storage, childEntry, &childData);

    cmp = entryNameCmp(childName, childData.name);

    if (cmp == 0)

      break;

    else if (cmp < 0)
    {
      *parentData = childData;
      *parentEntry = childEntry;
      *relation = DIRENTRY_RELATION_PREVIOUS;

      childEntry = parentData->leftChild;
    }

    else if (cmp > 0)
    {
      *parentData = childData;
      *parentEntry = childEntry;
      *relation = DIRENTRY_RELATION_NEXT;

      childEntry = parentData->rightChild;
    }
  }

  if (childEntry == DIRENTRY_NULL)
    return STG_E_FILENOTFOUND;
  else
    return S_OK;
}
