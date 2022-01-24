#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ dirRootEntry; scalar_t__ leftChild; scalar_t__ rightChild; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  StorageBaseImpl ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DirRef ;
typedef  TYPE_1__ DirEntry ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ DIRENTRY_NULL ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  STG_E_FILEALREADYEXISTS ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,TYPE_1__*) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC3(
  StorageBaseImpl *This,
  DirRef        parentStorageIndex,
  DirRef        newEntryIndex)
{
  DirEntry currentEntry;
  DirEntry newEntry;

  /*
   * Read the inserted entry
   */
  FUNC0(This,
                               newEntryIndex,
                               &newEntry);

  /*
   * Read the storage entry
   */
  FUNC0(This,
                               parentStorageIndex,
                               &currentEntry);

  if (currentEntry.dirRootEntry != DIRENTRY_NULL)
  {
    /*
     * The root storage contains some element, therefore, start the research
     * for the appropriate location.
     */
    BOOL found = FALSE;
    DirRef current, next, previous, currentEntryId;

    /*
     * Keep a reference to the root of the storage's element tree
     */
    currentEntryId = currentEntry.dirRootEntry;

    /*
     * Read
     */
    FUNC0(This,
                                 currentEntry.dirRootEntry,
                                 &currentEntry);

    previous = currentEntry.leftChild;
    next     = currentEntry.rightChild;
    current  = currentEntryId;

    while (!found)
    {
      LONG diff = FUNC2( newEntry.name, currentEntry.name);

      if (diff < 0)
      {
        if (previous != DIRENTRY_NULL)
        {
          FUNC0(This,
                                       previous,
                                       &currentEntry);
          current = previous;
        }
        else
        {
          currentEntry.leftChild = newEntryIndex;
          FUNC1(This,
                                        current,
                                        &currentEntry);
          found = TRUE;
        }
      }
      else if (diff > 0)
      {
        if (next != DIRENTRY_NULL)
        {
          FUNC0(This,
                                       next,
                                       &currentEntry);
          current = next;
        }
        else
        {
          currentEntry.rightChild = newEntryIndex;
          FUNC1(This,
                                        current,
                                        &currentEntry);
          found = TRUE;
        }
      }
      else
      {
	/*
	 * Trying to insert an item with the same name in the
	 * subtree structure.
	 */
	return STG_E_FILEALREADYEXISTS;
      }

      previous = currentEntry.leftChild;
      next     = currentEntry.rightChild;
    }
  }
  else
  {
    /*
     * The storage is empty, make the new entry the root of its element tree
     */
    currentEntry.dirRootEntry = newEntryIndex;
    FUNC1(This,
                                  parentStorageIndex,
                                  &currentEntry);
  }

  return S_OK;
}