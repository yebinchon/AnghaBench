#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* entries; int /*<<< orphan*/  scratch; int /*<<< orphan*/  transactedParent; } ;
typedef  TYPE_2__ TransactedSnapshotImpl ;
struct TYPE_10__ {char* name; int sizeOfNameString; scalar_t__ dirRootEntry; scalar_t__ rightChild; scalar_t__ leftChild; int /*<<< orphan*/  startingBlock; int /*<<< orphan*/  stgType; } ;
struct TYPE_8__ {scalar_t__ transactedParentEntry; scalar_t__ newTransactedParentEntry; void* deleted; void* stream_dirty; int /*<<< orphan*/  stream_entry; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  size_t DirRef ;
typedef  TYPE_3__ DirEntry ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_END_OF_CHAIN ; 
 scalar_t__ DIRENTRY_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STGTY_STREAM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* TRUE ; 
 size_t FUNC5 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static HRESULT FUNC7(
  TransactedSnapshotImpl *This, DirRef entry)
{
  HRESULT hr = S_OK;

  if (!This->entries[entry].stream_dirty)
  {
    DirEntry new_entrydata;

    FUNC6(&new_entrydata, 0, sizeof(DirEntry));
    new_entrydata.name[0] = 'S';
    new_entrydata.sizeOfNameString = 1;
    new_entrydata.stgType = STGTY_STREAM;
    new_entrydata.startingBlock = BLOCK_END_OF_CHAIN;
    new_entrydata.leftChild = DIRENTRY_NULL;
    new_entrydata.rightChild = DIRENTRY_NULL;
    new_entrydata.dirRootEntry = DIRENTRY_NULL;

    hr = FUNC3(This->scratch, &new_entrydata,
      &This->entries[entry].stream_entry);

    if (FUNC1(hr) && This->entries[entry].transactedParentEntry != DIRENTRY_NULL)
    {
      hr = FUNC2(
        This->scratch, This->entries[entry].stream_entry,
        This->transactedParent, This->entries[entry].transactedParentEntry);

      if (FUNC0(hr))
        FUNC4(This->scratch, This->entries[entry].stream_entry);
    }

    if (FUNC1(hr))
      This->entries[entry].stream_dirty = TRUE;

    if (This->entries[entry].transactedParentEntry != DIRENTRY_NULL)
    {
      /* Since this entry is modified, and we aren't using its stream data, we
       * no longer care about the original entry. */
      DirRef delete_ref;
      delete_ref = FUNC5(This, This->entries[entry].transactedParentEntry);

      if (delete_ref != DIRENTRY_NULL)
        This->entries[delete_ref].deleted = TRUE;

      This->entries[entry].transactedParentEntry = This->entries[entry].newTransactedParentEntry = DIRENTRY_NULL;
    }
  }

  return hr;
}