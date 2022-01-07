
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dirRootEntry; scalar_t__ leftChild; scalar_t__ rightChild; int name; } ;
typedef int StorageBaseImpl ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef scalar_t__ DirRef ;
typedef TYPE_1__ DirEntry ;
typedef scalar_t__ BOOL ;


 scalar_t__ DIRENTRY_NULL ;
 scalar_t__ FALSE ;
 int STG_E_FILEALREADYEXISTS ;
 int S_OK ;
 int StorageBaseImpl_ReadDirEntry (int *,scalar_t__,TYPE_1__*) ;
 int StorageBaseImpl_WriteDirEntry (int *,scalar_t__,TYPE_1__*) ;
 scalar_t__ TRUE ;
 scalar_t__ entryNameCmp (int ,int ) ;

__attribute__((used)) static HRESULT insertIntoTree(
  StorageBaseImpl *This,
  DirRef parentStorageIndex,
  DirRef newEntryIndex)
{
  DirEntry currentEntry;
  DirEntry newEntry;




  StorageBaseImpl_ReadDirEntry(This,
                               newEntryIndex,
                               &newEntry);




  StorageBaseImpl_ReadDirEntry(This,
                               parentStorageIndex,
                               &currentEntry);

  if (currentEntry.dirRootEntry != DIRENTRY_NULL)
  {




    BOOL found = FALSE;
    DirRef current, next, previous, currentEntryId;




    currentEntryId = currentEntry.dirRootEntry;




    StorageBaseImpl_ReadDirEntry(This,
                                 currentEntry.dirRootEntry,
                                 &currentEntry);

    previous = currentEntry.leftChild;
    next = currentEntry.rightChild;
    current = currentEntryId;

    while (!found)
    {
      LONG diff = entryNameCmp( newEntry.name, currentEntry.name);

      if (diff < 0)
      {
        if (previous != DIRENTRY_NULL)
        {
          StorageBaseImpl_ReadDirEntry(This,
                                       previous,
                                       &currentEntry);
          current = previous;
        }
        else
        {
          currentEntry.leftChild = newEntryIndex;
          StorageBaseImpl_WriteDirEntry(This,
                                        current,
                                        &currentEntry);
          found = TRUE;
        }
      }
      else if (diff > 0)
      {
        if (next != DIRENTRY_NULL)
        {
          StorageBaseImpl_ReadDirEntry(This,
                                       next,
                                       &currentEntry);
          current = next;
        }
        else
        {
          currentEntry.rightChild = newEntryIndex;
          StorageBaseImpl_WriteDirEntry(This,
                                        current,
                                        &currentEntry);
          found = TRUE;
        }
      }
      else
      {




 return STG_E_FILEALREADYEXISTS;
      }

      previous = currentEntry.leftChild;
      next = currentEntry.rightChild;
    }
  }
  else
  {



    currentEntry.dirRootEntry = newEntryIndex;
    StorageBaseImpl_WriteDirEntry(This,
                                  parentStorageIndex,
                                  &currentEntry);
  }

  return S_OK;
}
