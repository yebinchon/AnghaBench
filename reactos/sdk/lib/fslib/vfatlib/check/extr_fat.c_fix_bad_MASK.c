#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_11__ {int data_clusters; int /*<<< orphan*/  cluster_size; int /*<<< orphan*/  fat; } ;
struct TYPE_10__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ FAT_ENTRY ;
typedef  TYPE_2__ DOS_FS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int) ; 
 scalar_t__ verbose ; 

void FUNC7(DOS_FS * fs)
{
    uint32_t i;

    if (verbose)
	FUNC5("Checking for bad clusters.\n");
    for (i = 2; i < fs->data_clusters + 2; i++) {
	FAT_ENTRY curEntry;
	FUNC3(&curEntry, fs->fat, i, fs);

	if (!FUNC4(fs, i) && !FUNC0(fs, curEntry.value))
	    if (!FUNC2(FUNC1(fs, i), fs->cluster_size)) {
		FUNC5("Cluster %lu is unreadable.\n", (unsigned long)i);
		FUNC6(fs, i, -2);
	    }
    }
}