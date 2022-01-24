#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ off_t ;
struct TYPE_9__ {int attr; } ;
struct TYPE_8__ {int root_cluster; int cluster_size; int root_entries; scalar_t__ root_start; } ;
typedef  TYPE_1__ DOS_FS ;
typedef  TYPE_2__ DIR_ENT ;

/* Variables and functions */
 int ATTR_VOLUME ; 
 int VFAT_LN_ATTR ; 
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,TYPE_2__*) ; 
 int FUNC2 (TYPE_1__*,int) ; 

off_t FUNC3(DOS_FS * fs, DIR_ENT * de)
{
    uint32_t cluster;
    off_t offset;
    int i;

    if (fs->root_cluster) {
	for (cluster = fs->root_cluster;
	     cluster != 0 && cluster != -1;
	     cluster = FUNC2(fs, cluster)) {
	    offset = FUNC0(fs, cluster);
	    for (i = 0; i * sizeof(DIR_ENT) < fs->cluster_size; i++) {
		FUNC1(offset, sizeof(DIR_ENT), de);
		if (de->attr != VFAT_LN_ATTR && de->attr & ATTR_VOLUME)
		    return offset;
		offset += sizeof(DIR_ENT);
	    }
	}
    } else {
	for (i = 0; i < fs->root_entries; i++) {
	    offset = fs->root_start + i * sizeof(DIR_ENT);
	    FUNC1(offset, sizeof(DIR_ENT), de);
	    if (de->attr != VFAT_LN_ATTR && de->attr & ATTR_VOLUME)
		return offset;
	}
    }

    return 0;
}