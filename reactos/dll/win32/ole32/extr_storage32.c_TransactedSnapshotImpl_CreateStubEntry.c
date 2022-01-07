
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* entries; } ;
typedef TYPE_1__ TransactedSnapshotImpl ;
struct TYPE_6__ {size_t newTransactedParentEntry; size_t transactedParentEntry; int read; } ;
typedef TYPE_2__ TransactedDirEntry ;
typedef size_t DirRef ;


 size_t DIRENTRY_NULL ;
 int FALSE ;
 size_t TransactedSnapshotImpl_FindFreeEntry (TYPE_1__*) ;

__attribute__((used)) static DirRef TransactedSnapshotImpl_CreateStubEntry(
  TransactedSnapshotImpl *This, DirRef parentEntryRef)
{
  DirRef stubEntryRef;
  TransactedDirEntry *entry;

  stubEntryRef = TransactedSnapshotImpl_FindFreeEntry(This);

  if (stubEntryRef != DIRENTRY_NULL)
  {
    entry = &This->entries[stubEntryRef];

    entry->newTransactedParentEntry = entry->transactedParentEntry = parentEntryRef;

    entry->read = FALSE;
  }

  return stubEntryRef;
}
