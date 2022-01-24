#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  d2 ;
struct TYPE_20__ {scalar_t__ attr; scalar_t__ name; } ;
struct TYPE_19__ {int root_cluster; int cluster_size; int data_clusters; int root_entries; int root_start; int /*<<< orphan*/  fat; } ;
struct TYPE_18__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ FAT_ENTRY ;
typedef  TYPE_2__ DOS_FS ;
typedef  TYPE_3__ DIR_ENT ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  MSDOS_NAME ; 
 scalar_t__ VFAT_LN_ATTR ; 
 TYPE_3__* FUNC1 (int) ; 
 int FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  n_files ; 
 int FUNC11 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC15 (char const*,char const*,int /*<<< orphan*/ ) ; 

off_t FUNC16(DOS_FS * fs, DIR_ENT * de, const char *pattern, int gen_name)
{
    static int curr_num = 0;
    off_t offset;

    if (fs->root_cluster) {
	DIR_ENT d2;
	int i = 0, got = 0;
	uint32_t clu_num, prev = 0;
	off_t offset2;

	clu_num = fs->root_cluster;
	offset = FUNC2(fs, clu_num);
	while (clu_num > 0 && clu_num != -1) {
	    FUNC5(offset, sizeof(DIR_ENT), &d2);
	    if (FUNC0(d2.name) && d2.attr != VFAT_LN_ATTR) {
		got = 1;
		break;
	    }
	    i += sizeof(DIR_ENT);
	    offset += sizeof(DIR_ENT);
	    if ((i % fs->cluster_size) == 0) {
		prev = clu_num;
		if ((clu_num = FUNC11(fs, clu_num)) == 0 || clu_num == -1)
		    break;
		offset = FUNC2(fs, clu_num);
	    }
	}
	if (!got) {
	    /* no free slot, need to extend root dir: alloc next free cluster
	     * after previous one */
	    if (!prev)
		FUNC3("Root directory has no cluster allocated!");
	    for (clu_num = prev + 1; clu_num != prev; clu_num++) {
		FAT_ENTRY entry;

		if (clu_num >= fs->data_clusters + 2)
		    clu_num = 2;
		FUNC7(&entry, fs->fat, clu_num, fs);
		if (!entry.value)
		    break;
	    }
	    if (clu_num == prev)
		FUNC3("Root directory full and no free cluster");
	    FUNC12(fs, prev, clu_num);
	    FUNC12(fs, clu_num, -1);
	    FUNC13(fs, clu_num, FUNC8(fs, fs->root_cluster));
	    /* clear new cluster */
	    FUNC10(&d2, 0, sizeof(d2));
	    offset = FUNC2(fs, clu_num);
	    for (i = 0; i < fs->cluster_size; i += sizeof(DIR_ENT))
		FUNC6(offset + i, sizeof(d2), &d2);
	}
	FUNC10(de, 0, sizeof(DIR_ENT));
	if (gen_name) {
	    while (1) {
		char expanded[12];
		FUNC14(expanded, pattern, curr_num);
		FUNC9(de->name, expanded, MSDOS_NAME);
		clu_num = fs->root_cluster;
		i = 0;
		offset2 = FUNC2(fs, clu_num);
		while (clu_num > 0 && clu_num != -1) {
		    FUNC5(offset2, sizeof(DIR_ENT), &d2);
		    if (offset2 != offset &&
			!FUNC15((const char *)d2.name, (const char *)de->name,
				 MSDOS_NAME))
			break;
		    i += sizeof(DIR_ENT);
		    offset2 += sizeof(DIR_ENT);
		    if ((i % fs->cluster_size) == 0) {
			if ((clu_num = FUNC11(fs, clu_num)) == 0 ||
			    clu_num == -1)
			    break;
			offset2 = FUNC2(fs, clu_num);
		    }
		}
		if (clu_num == 0 || clu_num == -1)
		    break;
		if (++curr_num >= 10000)
		    FUNC3("Unable to create unique name");
	    }
	} else {
	    FUNC9(de->name, pattern, MSDOS_NAME);
	}
    } else {
	DIR_ENT *root;
	int next_free = 0, scan;

	root = FUNC1(fs->root_entries * sizeof(DIR_ENT));
	FUNC5(fs->root_start, fs->root_entries * sizeof(DIR_ENT), root);

	while (next_free < fs->root_entries)
	    if (FUNC0(root[next_free].name) &&
		root[next_free].attr != VFAT_LN_ATTR)
		break;
	    else
		next_free++;
	if (next_free == fs->root_entries)
	    FUNC3("Root directory is full.");
	offset = fs->root_start + next_free * sizeof(DIR_ENT);
	FUNC10(de, 0, sizeof(DIR_ENT));
	if (gen_name) {
	    while (1) {
		char expanded[12];
		FUNC14(expanded, pattern, curr_num);
		FUNC9(de->name, expanded, MSDOS_NAME);
		for (scan = 0; scan < fs->root_entries; scan++)
		    if (scan != next_free &&
			!FUNC15((const char *)root[scan].name,
				 (const char *)de->name, MSDOS_NAME))
			break;
		if (scan == fs->root_entries)
		    break;
		if (++curr_num >= 10000)
		    FUNC3("Unable to create unique name");
	    }
	} else {
	    FUNC9(de->name, pattern, MSDOS_NAME);
	}
	FUNC4(root);
    }
    ++n_files;
    return offset;
}