
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_8__ {size_t firstFreeEntry; size_t entries_size; TYPE_2__* entries; } ;
typedef TYPE_1__ TransactedSnapshotImpl ;
struct TYPE_9__ {scalar_t__ inuse; } ;
typedef TYPE_2__ TransactedDirEntry ;
typedef size_t DirRef ;


 size_t DIRENTRY_NULL ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 scalar_t__ TRUE ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;

__attribute__((used)) static DirRef TransactedSnapshotImpl_FindFreeEntry(TransactedSnapshotImpl *This)
{
  DirRef result=This->firstFreeEntry;

  while (result < This->entries_size && This->entries[result].inuse)
    result++;

  if (result == This->entries_size)
  {
    ULONG new_size = This->entries_size * 2;
    TransactedDirEntry *new_entries;

    new_entries = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(TransactedDirEntry) * new_size);
    if (!new_entries) return DIRENTRY_NULL;

    memcpy(new_entries, This->entries, sizeof(TransactedDirEntry) * This->entries_size);
    HeapFree(GetProcessHeap(), 0, This->entries);

    This->entries = new_entries;
    This->entries_size = new_size;
  }

  This->entries[result].inuse = TRUE;

  This->firstFreeEntry = result+1;

  return result;
}
