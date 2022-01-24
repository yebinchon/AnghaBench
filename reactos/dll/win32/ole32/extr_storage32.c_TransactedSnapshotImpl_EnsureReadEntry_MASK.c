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
struct TYPE_9__ {TYPE_1__* entries; int /*<<< orphan*/  transactedParent; } ;
typedef  TYPE_2__ TransactedSnapshotImpl ;
struct TYPE_10__ {scalar_t__ leftChild; scalar_t__ rightChild; scalar_t__ dirRootEntry; } ;
struct TYPE_8__ {scalar_t__ read; int /*<<< orphan*/  data; int /*<<< orphan*/  transactedParentEntry; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  size_t DirRef ;
typedef  TYPE_3__ DirEntry ;

/* Variables and functions */
 scalar_t__ DIRENTRY_NULL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ TRUE ; 
 void* FUNC2 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 

__attribute__((used)) static HRESULT FUNC4(
  TransactedSnapshotImpl *This, DirRef entry)
{
  HRESULT hr=S_OK;
  DirEntry data;

  if (!This->entries[entry].read)
  {
    hr = FUNC1(This->transactedParent,
        This->entries[entry].transactedParentEntry,
        &data);

    if (FUNC0(hr) && data.leftChild != DIRENTRY_NULL)
    {
      data.leftChild = FUNC2(This, data.leftChild);

      if (data.leftChild == DIRENTRY_NULL)
        hr = E_OUTOFMEMORY;
    }

    if (FUNC0(hr) && data.rightChild != DIRENTRY_NULL)
    {
      data.rightChild = FUNC2(This, data.rightChild);

      if (data.rightChild == DIRENTRY_NULL)
        hr = E_OUTOFMEMORY;
    }

    if (FUNC0(hr) && data.dirRootEntry != DIRENTRY_NULL)
    {
      data.dirRootEntry = FUNC2(This, data.dirRootEntry);

      if (data.dirRootEntry == DIRENTRY_NULL)
        hr = E_OUTOFMEMORY;
    }

    if (FUNC0(hr))
    {
      FUNC3(&This->entries[entry].data, &data, sizeof(DirEntry));
      This->entries[entry].read = TRUE;
    }
  }

  return hr;
}