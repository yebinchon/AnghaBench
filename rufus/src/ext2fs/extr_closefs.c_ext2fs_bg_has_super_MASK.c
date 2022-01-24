#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ext2_filsys ;
typedef  int dgrp_t ;
struct TYPE_6__ {int* s_backup_bgs; } ;
struct TYPE_5__ {TYPE_2__* super; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int,int) ; 

int FUNC3(ext2_filsys fs, dgrp_t group)
{
	if (group == 0)
		return 1;
	if (FUNC1(fs->super)) {
		if (group == fs->super->s_backup_bgs[0] ||
		    group == fs->super->s_backup_bgs[1])
			return 1;
		return 0;
	}
	if ((group <= 1) || !FUNC0(fs->super))
		return 1;
	if (!(group & 1))
		return 0;
	if (FUNC2(group, 3) || (FUNC2(group, 5)) ||
	    FUNC2(group, 7))
		return 1;

	return 0;
}