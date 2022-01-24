#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG_PTR ;
typedef  int /*<<< orphan*/  ULONGLONG ;
struct TYPE_17__ {int /*<<< orphan*/  AttrCtxtLookasideList; } ;
struct TYPE_13__ {scalar_t__ MappingPairsOffset; } ;
struct TYPE_16__ {TYPE_1__ NonResident; } ;
struct TYPE_15__ {int CacheRunStartLCN; int CacheRunLastLCN; TYPE_4__* pRecord; int /*<<< orphan*/  DataRunsMCB; scalar_t__ CacheRunCurrentOffset; int /*<<< orphan*/  CacheRunLength; int /*<<< orphan*/  CacheRun; scalar_t__ CacheRunOffset; } ;
struct TYPE_14__ {scalar_t__ IsNonResident; int /*<<< orphan*/  Length; } ;
typedef  int /*<<< orphan*/  PUCHAR ;
typedef  TYPE_2__* PNTFS_ATTR_RECORD ;
typedef  TYPE_3__* PNTFS_ATTR_CONTEXT ;
typedef  int LONGLONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 TYPE_8__* NtfsGlobalData ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG_NTFS ; 

PNTFS_ATTR_CONTEXT
FUNC9(PNTFS_ATTR_RECORD AttrRecord)
{
    PNTFS_ATTR_CONTEXT Context;

    Context = FUNC3(&NtfsGlobalData->AttrCtxtLookasideList);
    if(!Context)
    {
        FUNC1("Error: Unable to allocate memory for context!\n");
        return NULL;
    }

    // Allocate memory for a copy of the attribute
    Context->pRecord = FUNC4(NonPagedPool, AttrRecord->Length, TAG_NTFS);
    if(!Context->pRecord)
    {
        FUNC1("Error: Unable to allocate memory for attribute record!\n");
        FUNC6(&NtfsGlobalData->AttrCtxtLookasideList, Context);
        return NULL;
    }

    // Copy the attribute
    FUNC8(Context->pRecord, AttrRecord, AttrRecord->Length);

    if (AttrRecord->IsNonResident)
    {
        LONGLONG DataRunOffset;
        ULONGLONG DataRunLength;
        ULONGLONG NextVBN = 0;
        PUCHAR DataRun = (PUCHAR)((ULONG_PTR)Context->pRecord + Context->pRecord->NonResident.MappingPairsOffset);

        Context->CacheRun = DataRun;
        Context->CacheRunOffset = 0;
        Context->CacheRun = FUNC2(Context->CacheRun, &DataRunOffset, &DataRunLength);
        Context->CacheRunLength = DataRunLength;
        if (DataRunOffset != -1)
        {
            /* Normal run. */
            Context->CacheRunStartLCN =
            Context->CacheRunLastLCN = DataRunOffset;
        }
        else
        {
            /* Sparse run. */
            Context->CacheRunStartLCN = -1;
            Context->CacheRunLastLCN = 0;
        }
        Context->CacheRunCurrentOffset = 0;

        // Convert the data runs to a map control block
        if (!FUNC7(FUNC0(DataRun, &Context->DataRunsMCB, &NextVBN)))
        {
            FUNC1("Unable to convert data runs to MCB!\n");
            FUNC5(Context->pRecord, TAG_NTFS);
            FUNC6(&NtfsGlobalData->AttrCtxtLookasideList, Context);
            return NULL;
        }
    }

    return Context;
}