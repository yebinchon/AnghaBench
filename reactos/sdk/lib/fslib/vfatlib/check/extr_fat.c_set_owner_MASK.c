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
typedef  size_t uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/ ** cluster_owner; } ;
typedef  TYPE_1__ DOS_FS ;
typedef  int /*<<< orphan*/  DOS_FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

void FUNC1(DOS_FS * fs, uint32_t cluster, DOS_FILE * owner)
{
    if (fs->cluster_owner == NULL)
	FUNC0("Internal error: attempt to set owner in non-existent table");

    if (owner && fs->cluster_owner[cluster]
	&& (fs->cluster_owner[cluster] != owner))
	FUNC0("Internal error: attempt to change file owner");
    fs->cluster_owner[cluster] = owner;
}