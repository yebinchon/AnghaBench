
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {scalar_t__ leftChild; scalar_t__ rightChild; int name; } ;
typedef int StorageBaseImpl ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DirRef ;
typedef TYPE_1__ DirEntry ;


 scalar_t__ DIRENTRY_NULL ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ S_OK ;
 scalar_t__ StorageBaseImpl_ReadDirEntry (int *,scalar_t__,TYPE_1__*) ;
 scalar_t__ StorageBaseImpl_WriteDirEntry (int *,scalar_t__,TYPE_1__*) ;
 scalar_t__ findTreeParent (int *,scalar_t__,int ,TYPE_1__*,scalar_t__*,int *) ;
 int setEntryLink (TYPE_1__*,int ,scalar_t__) ;

__attribute__((used)) static HRESULT removeFromTree(
  StorageBaseImpl *This,
  DirRef parentStorageIndex,
  DirRef deletedIndex)
{
  DirEntry entryToDelete;
  DirEntry parentEntry;
  DirRef parentEntryRef;
  ULONG typeOfRelation;
  HRESULT hr;

  hr = StorageBaseImpl_ReadDirEntry(This, deletedIndex, &entryToDelete);

  if (hr != S_OK)
    return hr;




  hr = findTreeParent(This, parentStorageIndex, entryToDelete.name,
    &parentEntry, &parentEntryRef, &typeOfRelation);

  if (hr != S_OK)
    return hr;

  if (entryToDelete.leftChild != DIRENTRY_NULL)
  {



    setEntryLink(&parentEntry, typeOfRelation, entryToDelete.leftChild);

    hr = StorageBaseImpl_WriteDirEntry(
            This,
            parentEntryRef,
            &parentEntry);
    if(FAILED(hr))
    {
      return hr;
    }

    if (entryToDelete.rightChild != DIRENTRY_NULL)
    {





      DirRef newRightChildParent = entryToDelete.leftChild;
      DirEntry newRightChildParentEntry;

      do
      {
        hr = StorageBaseImpl_ReadDirEntry(
                This,
                newRightChildParent,
                &newRightChildParentEntry);
        if (FAILED(hr))
        {
          return hr;
        }

        if (newRightChildParentEntry.rightChild != DIRENTRY_NULL)
          newRightChildParent = newRightChildParentEntry.rightChild;
      } while (newRightChildParentEntry.rightChild != DIRENTRY_NULL);

      newRightChildParentEntry.rightChild = entryToDelete.rightChild;

      hr = StorageBaseImpl_WriteDirEntry(
              This,
              newRightChildParent,
              &newRightChildParentEntry);
      if (FAILED(hr))
      {
        return hr;
      }
    }
  }
  else
  {



    setEntryLink(&parentEntry, typeOfRelation, entryToDelete.rightChild);

    hr = StorageBaseImpl_WriteDirEntry(
            This,
            parentEntryRef,
            &parentEntry);
    if(FAILED(hr))
    {
      return hr;
    }
  }

  return hr;
}
