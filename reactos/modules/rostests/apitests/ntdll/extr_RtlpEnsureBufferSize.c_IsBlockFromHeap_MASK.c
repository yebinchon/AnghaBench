#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  he ;
struct TYPE_7__ {int dwSize; scalar_t__ dwAddress; scalar_t__ dwBlockSize; } ;
struct TYPE_6__ {int wFlags; int /*<<< orphan*/ * lpData; } ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  TYPE_1__ PROCESS_HEAP_ENTRY ;
typedef  TYPE_2__ HEAPENTRY32 ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD_PTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int PROCESS_HEAP_ENTRY_BUSY ; 
 int /*<<< orphan*/  TH32CS_SNAPHEAPLIST ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static BOOL FUNC9(HANDLE hHeap, PVOID ptr)
{
    /* Use when this is implemented */
#if 0
    PROCESS_HEAP_ENTRY Entry;
    BOOL ret = FALSE;
    if (!HeapLock(hHeap))
    {
        skip("Unable to lock heap\n");
        return FALSE;
    }

    Entry.lpData = NULL;
    while (!ret && HeapWalk(hHeap, &Entry))
    {
        if ((Entry.wFlags & PROCESS_HEAP_ENTRY_BUSY) &&
            (Entry.lpData == ptr))
        {
            ret = TRUE;
        }
    }

    HeapUnlock(hHeap);
    return ret;
#else
    HEAPENTRY32 he;
    BOOL ret = FALSE;
    HANDLE hHeapSnap = FUNC1(TH32CS_SNAPHEAPLIST, FUNC2());

    if (hHeapSnap == INVALID_HANDLE_VALUE)
        return FALSE;

    he.dwSize = sizeof(he);

    if (FUNC3(&he, FUNC2(), (DWORD_PTR)hHeap))
    {
        do {
            if ((DWORD_PTR)ptr >= he.dwAddress && (DWORD_PTR)ptr <= (he.dwAddress + he.dwBlockSize))
                ret = TRUE;
        } while (!ret && FUNC4(&he));
    }

    FUNC0(hHeapSnap);

    return ret;
#endif
}