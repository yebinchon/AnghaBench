#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_14__ {int /*<<< orphan*/  size; } ;
struct TYPE_17__ {TYPE_1__ dir_ent; } ;
struct TYPE_16__ {int cluster_size; int data_clusters; int /*<<< orphan*/  fat; } ;
struct TYPE_15__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_2__ FAT_ENTRY ;
typedef  TYPE_3__ DOS_FS ;
typedef  TYPE_4__ DOS_FILE ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long,unsigned long,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int) ; 

__attribute__((used)) static void FUNC6(DOS_FS * fs, DOS_FILE * file)
{
    uint32_t clusters, left, prev, walk;

    clusters = left = (FUNC3(file->dir_ent.size) + fs->cluster_size - 1) /
	fs->cluster_size;
    prev = 0;

    walk = FUNC0(file, fs);

    while (left && (walk >= 2) && (walk < fs->data_clusters + 2)) {

	FAT_ENTRY curEntry;
	FUNC2(&curEntry, fs->fat, walk, fs);

	if (!curEntry.value)
	    break;

	left--;
	if (prev)
	    FUNC5(fs, prev, walk);
	prev = walk;
	walk++;
    }
    if (prev)
	FUNC5(fs, prev, -1);
    else
	FUNC1(file, 0, fs);
    if (left)
	FUNC4("Warning: Did only undelete %lu of %lu cluster%s.\n",
	       (unsigned long)clusters - left, (unsigned long)clusters, clusters == 1 ? "" : "s");

}