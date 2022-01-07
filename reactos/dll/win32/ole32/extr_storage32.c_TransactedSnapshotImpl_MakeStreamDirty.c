
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* entries; int scratch; int transactedParent; } ;
typedef TYPE_2__ TransactedSnapshotImpl ;
struct TYPE_10__ {char* name; int sizeOfNameString; scalar_t__ dirRootEntry; scalar_t__ rightChild; scalar_t__ leftChild; int startingBlock; int stgType; } ;
struct TYPE_8__ {scalar_t__ transactedParentEntry; scalar_t__ newTransactedParentEntry; void* deleted; void* stream_dirty; int stream_entry; } ;
typedef int HRESULT ;
typedef size_t DirRef ;
typedef TYPE_3__ DirEntry ;


 int BLOCK_END_OF_CHAIN ;
 scalar_t__ DIRENTRY_NULL ;
 scalar_t__ FAILED (int ) ;
 int STGTY_STREAM ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int StorageBaseImpl_CopyStream (int ,int ,int ,scalar_t__) ;
 int StorageBaseImpl_CreateDirEntry (int ,TYPE_3__*,int *) ;
 int StorageBaseImpl_DestroyDirEntry (int ,int ) ;
 void* TRUE ;
 size_t TransactedSnapshotImpl_CreateStubEntry (TYPE_2__*,scalar_t__) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static HRESULT TransactedSnapshotImpl_MakeStreamDirty(
  TransactedSnapshotImpl *This, DirRef entry)
{
  HRESULT hr = S_OK;

  if (!This->entries[entry].stream_dirty)
  {
    DirEntry new_entrydata;

    memset(&new_entrydata, 0, sizeof(DirEntry));
    new_entrydata.name[0] = 'S';
    new_entrydata.sizeOfNameString = 1;
    new_entrydata.stgType = STGTY_STREAM;
    new_entrydata.startingBlock = BLOCK_END_OF_CHAIN;
    new_entrydata.leftChild = DIRENTRY_NULL;
    new_entrydata.rightChild = DIRENTRY_NULL;
    new_entrydata.dirRootEntry = DIRENTRY_NULL;

    hr = StorageBaseImpl_CreateDirEntry(This->scratch, &new_entrydata,
      &This->entries[entry].stream_entry);

    if (SUCCEEDED(hr) && This->entries[entry].transactedParentEntry != DIRENTRY_NULL)
    {
      hr = StorageBaseImpl_CopyStream(
        This->scratch, This->entries[entry].stream_entry,
        This->transactedParent, This->entries[entry].transactedParentEntry);

      if (FAILED(hr))
        StorageBaseImpl_DestroyDirEntry(This->scratch, This->entries[entry].stream_entry);
    }

    if (SUCCEEDED(hr))
      This->entries[entry].stream_dirty = TRUE;

    if (This->entries[entry].transactedParentEntry != DIRENTRY_NULL)
    {


      DirRef delete_ref;
      delete_ref = TransactedSnapshotImpl_CreateStubEntry(This, This->entries[entry].transactedParentEntry);

      if (delete_ref != DIRENTRY_NULL)
        This->entries[delete_ref].deleted = TRUE;

      This->entries[entry].transactedParentEntry = This->entries[entry].newTransactedParentEntry = DIRENTRY_NULL;
    }
  }

  return hr;
}
