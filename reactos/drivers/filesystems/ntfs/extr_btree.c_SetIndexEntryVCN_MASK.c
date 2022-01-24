#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ ULONG_PTR ;
typedef  int /*<<< orphan*/  ULONGLONG ;
struct TYPE_3__ {int Flags; scalar_t__ Length; } ;
typedef  int /*<<< orphan*/ * PULONGLONG ;
typedef  TYPE_1__* PINDEX_ENTRY_ATTRIBUTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NTFS_INDEX_ENTRY_NODE ; 

VOID
FUNC1(PINDEX_ENTRY_ATTRIBUTE IndexEntry, ULONGLONG VCN)
{
    PULONGLONG Destination = (PULONGLONG)((ULONG_PTR)IndexEntry + IndexEntry->Length - sizeof(ULONGLONG));

    FUNC0(IndexEntry->Flags & NTFS_INDEX_ENTRY_NODE);

    *Destination = VCN;
}