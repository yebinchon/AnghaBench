#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ext2_filsys ;
typedef  int dgrp_t ;
typedef  int blk64_t ;
struct TYPE_6__ {int s_blocks_per_group; } ;
struct TYPE_5__ {int group_desc_count; TYPE_4__* super; } ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*) ; 
 int FUNC1 (TYPE_1__*,int) ; 

blk64_t FUNC2(ext2_filsys fs, dgrp_t group)
{
	return (group == fs->group_desc_count - 1 ?
		FUNC0(fs->super) - 1 :
		FUNC1(fs, group) +
			(fs->super->s_blocks_per_group - 1));
}