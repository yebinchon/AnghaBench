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
typedef  int /*<<< orphan*/  OLECHAR ;
typedef  scalar_t__ LONG ;
typedef  scalar_t__ DirRef ;
typedef  TYPE_1__ DirEntry ;

/* Variables and functions */
 scalar_t__ DIRENTRY_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DirRef FUNC2(StorageBaseImpl *storage, DirRef storageEntry,
    const OLECHAR *name, DirEntry *data)
{
  DirRef currentEntry;

  /* Read the storage entry to find the root of the tree. */
  FUNC0(storage, storageEntry, data);

  currentEntry = data->dirRootEntry;

  while (currentEntry != DIRENTRY_NULL)
  {
    LONG cmp;

    FUNC0(storage, currentEntry, data);

    cmp = FUNC1(name, data->name);

    if (cmp == 0)
      /* found it */
      break;

    else if (cmp < 0)
      currentEntry = data->leftChild;

    else if (cmp > 0)
      currentEntry = data->rightChild;
  }

  return currentEntry;
}