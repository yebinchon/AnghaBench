#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_17__ {int /*<<< orphan*/  size; void* starthi; void* start; } ;
struct TYPE_16__ {int data_clusters; int fat_bits; unsigned long long cluster_size; int /*<<< orphan*/  fat; } ;
struct TYPE_15__ {int value; } ;
typedef  TYPE_1__ FAT_ENTRY ;
typedef  TYPE_2__ DOS_FS ;
typedef  int /*<<< orphan*/  DOS_FILE ;
typedef  TYPE_3__ DIR_ENT ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int) ; 
 int* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*,int) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long long) ; 
 unsigned long long FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 scalar_t__ rw ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__ verbose ; 

void FUNC16(DOS_FS * fs)
{
    DOS_FILE orphan;
    int reclaimed, files;
    int changed = 0;
    uint32_t i, next, walk;
    uint32_t *num_refs = NULL;	/* Only for orphaned clusters */
    uint32_t total_num_clusters;

    if (verbose)
	FUNC13("Reclaiming unconnected clusters.\n");

    total_num_clusters = fs->data_clusters + 2;
    num_refs = FUNC1(total_num_clusters * sizeof(uint32_t));
    FUNC11(num_refs, 0, (total_num_clusters * sizeof(uint32_t)));

    /* Guarantee that all orphan chains (except cycles) end cleanly
     * with an end-of-chain mark.
     */

    for (i = 2; i < total_num_clusters; i++) {
	FAT_ENTRY curEntry;
	FUNC6(&curEntry, fs->fat, i, fs);

	next = curEntry.value;
	if (!FUNC7(fs, i) && next && next < fs->data_clusters + 2) {
	    /* Cluster is linked, but not owned (orphan) */
	    FAT_ENTRY nextEntry;
	    FUNC6(&nextEntry, fs->fat, next, fs);

	    /* Mark it end-of-chain if it links into an owned cluster,
	     * a free cluster, or a bad cluster.
	     */
	    if (FUNC7(fs, next) || !nextEntry.value ||
		FUNC0(fs, nextEntry.value))
		FUNC14(fs, i, -1);
	    else
		num_refs[next]++;
	}
    }

    /* Scan until all the orphans are accounted for,
     * and all cycles and cross-links are broken
     */
    do {
	FUNC15(fs, &orphan, num_refs, changed);
	changed = 0;

	/* Any unaccounted-for orphans must be part of a cycle */
	for (i = 2; i < total_num_clusters; i++) {
	    FAT_ENTRY curEntry;
	    FUNC6(&curEntry, fs->fat, i, fs);

	    if (curEntry.value && !FUNC0(fs, curEntry.value) &&
		!FUNC7(fs, i)) {
		if (!num_refs[curEntry.value]--)
		    FUNC3("Internal error: num_refs going below zero");
		FUNC14(fs, i, -1);
		changed = curEntry.value;
		FUNC13("Broke cycle at cluster %lu in free chain.\n", (unsigned long)i);

		/* If we've created a new chain head,
		 * tag_free() can claim it
		 */
		if (num_refs[curEntry.value] == 0)
		    break;
	    }
	}
    }
    while (changed);

#ifdef __REACTOS__
    if (rw) {
#endif
    /* Now we can start recovery */
    files = reclaimed = 0;
    for (i = 2; i < total_num_clusters; i++)
	/* If this cluster is the head of an orphan chain... */
	if (FUNC7(fs, i) == &orphan && !num_refs[i]) {
	    DIR_ENT de;
	    off_t offset;
	    files++;
	    offset = FUNC2(fs, &de, "FSCK%04dREC", 1);
	    de.start = FUNC8(i & 0xffff);
	    if (fs->fat_bits == 32)
		de.starthi = FUNC8(i >> 16);
	    for (walk = i; walk > 0 && walk != -1;
		 walk = FUNC12(fs, walk)) {
		de.size = FUNC9(FUNC10(de.size) + fs->cluster_size);
		reclaimed++;
	    }
	    FUNC5(offset, sizeof(DIR_ENT), &de);
	}
    if (reclaimed)
	FUNC13("Reclaimed %d unused cluster%s (%llu bytes) in %d chain%s.\n",
	       reclaimed, reclaimed == 1 ? "" : "s",
	       (unsigned long long)reclaimed * fs->cluster_size, files,
	       files == 1 ? "" : "s");
#ifdef __REACTOS__
	}
#endif

    FUNC4(num_refs);
}