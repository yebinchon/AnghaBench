#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONGLONG ;
struct TYPE_6__ {int /*<<< orphan*/  Name; int /*<<< orphan*/  NameLen; int /*<<< orphan*/  MftId; struct TYPE_6__* Next; } ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  TYPE_1__* PNAME_CACHE_ENTRY ;
typedef  int /*<<< orphan*/  NAME_CACHE_ENTRY ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 TYPE_1__* CacheHead ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

PNAME_CACHE_ENTRY FUNC4(PWSTR Name, DWORD Length, ULONGLONG MftId)
{
    PNAME_CACHE_ENTRY CacheEntry;

    /* Don't add in cache if already there! */
    CacheEntry = FUNC1(MftId);
    if (CacheEntry != NULL)
    {
        return CacheEntry;
    }

    /* Allocate an entry big enough to store name and cache info */
    CacheEntry = FUNC3(FUNC2(), 0, sizeof(NAME_CACHE_ENTRY) + Length);
    if (CacheEntry == NULL)
    {
        return NULL;
    }

    /* Insert in head (likely more perf) */
    CacheEntry->Next = CacheHead;
    CacheHead = CacheEntry;
    /* Set up entry with full path */
    CacheEntry->MftId = MftId;
    CacheEntry->NameLen = Length;
    FUNC0(CacheEntry->Name, Name, Length);

    return CacheEntry;
}