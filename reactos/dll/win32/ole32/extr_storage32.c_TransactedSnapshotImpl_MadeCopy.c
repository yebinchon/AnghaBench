
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* entries; } ;
typedef TYPE_2__ TransactedSnapshotImpl ;
struct TYPE_4__ {scalar_t__ newTransactedParentEntry; scalar_t__ transactedParentEntry; } ;
typedef size_t DirRef ;
typedef int BOOL ;


 size_t DIRENTRY_NULL ;

__attribute__((used)) static inline BOOL TransactedSnapshotImpl_MadeCopy(
  TransactedSnapshotImpl* This, DirRef entry)
{
  return entry != DIRENTRY_NULL &&
    This->entries[entry].newTransactedParentEntry != This->entries[entry].transactedParentEntry;
}
