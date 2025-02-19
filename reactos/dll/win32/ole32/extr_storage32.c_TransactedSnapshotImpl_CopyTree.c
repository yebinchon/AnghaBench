
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {size_t storageDirEntry; } ;
struct TYPE_18__ {TYPE_5__* entries; int transactedParent; int scratch; TYPE_1__ base; } ;
typedef TYPE_4__ TransactedSnapshotImpl ;
struct TYPE_17__ {scalar_t__ QuadPart; } ;
struct TYPE_21__ {size_t dirRootEntry; size_t leftChild; size_t rightChild; TYPE_3__ size; } ;
struct TYPE_19__ {size_t parent; size_t newTransactedParentEntry; size_t transactedParentEntry; TYPE_8__ data; int stream_entry; scalar_t__ stream_dirty; int dirty; int read; } ;
typedef TYPE_5__ TransactedDirEntry ;
struct TYPE_16__ {scalar_t__ QuadPart; } ;
struct TYPE_20__ {size_t leftChild; size_t rightChild; size_t dirRootEntry; int startingBlock; TYPE_2__ size; } ;
typedef int HRESULT ;
typedef size_t DirRef ;
typedef TYPE_6__ DirEntry ;


 int BLOCK_END_OF_CHAIN ;
 size_t DIRENTRY_NULL ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int StorageBaseImpl_CopyStream (int ,size_t,int ,int ) ;
 int StorageBaseImpl_CreateDirEntry (int ,TYPE_6__*,size_t*) ;
 int StorageBaseImpl_StreamLink (int ,size_t,size_t) ;
 int TransactedSnapshotImpl_DestroyTemporaryCopy (TYPE_4__*,size_t) ;
 size_t TransactedSnapshotImpl_FindFirstChild (TYPE_4__*,size_t) ;
 size_t TransactedSnapshotImpl_FindNextChild (TYPE_4__*,size_t) ;
 int TransactedSnapshotImpl_MadeCopy (TYPE_4__*,size_t) ;
 int memcpy (TYPE_6__*,TYPE_8__*,int) ;

__attribute__((used)) static HRESULT TransactedSnapshotImpl_CopyTree(TransactedSnapshotImpl* This)
{
  DirRef cursor;
  TransactedDirEntry *entry;
  HRESULT hr = S_OK;

  cursor = This->base.storageDirEntry;
  entry = &This->entries[cursor];
  entry->parent = DIRENTRY_NULL;
  entry->newTransactedParentEntry = entry->transactedParentEntry;

  if (entry->data.dirRootEntry == DIRENTRY_NULL)
    return S_OK;

  This->entries[entry->data.dirRootEntry].parent = DIRENTRY_NULL;

  cursor = TransactedSnapshotImpl_FindFirstChild(This, entry->data.dirRootEntry);
  entry = &This->entries[cursor];

  while (cursor != DIRENTRY_NULL)
  {

    if (!entry->read ||
        (!entry->dirty && !entry->stream_dirty &&
         !TransactedSnapshotImpl_MadeCopy(This, entry->data.leftChild) &&
         !TransactedSnapshotImpl_MadeCopy(This, entry->data.rightChild) &&
         !TransactedSnapshotImpl_MadeCopy(This, entry->data.dirRootEntry)))
      entry->newTransactedParentEntry = entry->transactedParentEntry;
    else
    {
      DirEntry newData;

      memcpy(&newData, &entry->data, sizeof(DirEntry));

      newData.size.QuadPart = 0;
      newData.startingBlock = BLOCK_END_OF_CHAIN;

      if (newData.leftChild != DIRENTRY_NULL)
        newData.leftChild = This->entries[newData.leftChild].newTransactedParentEntry;

      if (newData.rightChild != DIRENTRY_NULL)
        newData.rightChild = This->entries[newData.rightChild].newTransactedParentEntry;

      if (newData.dirRootEntry != DIRENTRY_NULL)
        newData.dirRootEntry = This->entries[newData.dirRootEntry].newTransactedParentEntry;

      hr = StorageBaseImpl_CreateDirEntry(This->transactedParent, &newData,
        &entry->newTransactedParentEntry);
      if (FAILED(hr))
      {
        TransactedSnapshotImpl_DestroyTemporaryCopy(This, cursor);
        return hr;
      }

      if (entry->stream_dirty)
      {
        hr = StorageBaseImpl_CopyStream(
          This->transactedParent, entry->newTransactedParentEntry,
          This->scratch, entry->stream_entry);
      }
      else if (entry->data.size.QuadPart)
      {
        hr = StorageBaseImpl_StreamLink(
          This->transactedParent, entry->newTransactedParentEntry,
          entry->transactedParentEntry);
      }

      if (FAILED(hr))
      {
        cursor = TransactedSnapshotImpl_FindNextChild(This, cursor);
        TransactedSnapshotImpl_DestroyTemporaryCopy(This, cursor);
        return hr;
      }
    }

    cursor = TransactedSnapshotImpl_FindNextChild(This, cursor);
    entry = &This->entries[cursor];
  }

  return hr;
}
