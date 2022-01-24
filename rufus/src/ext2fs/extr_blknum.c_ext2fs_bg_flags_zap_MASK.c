#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ext4_group_desc {scalar_t__ bg_flags; } ;
typedef  TYPE_1__* ext2_filsys ;
typedef  int /*<<< orphan*/  dgrp_t ;
struct TYPE_4__ {int /*<<< orphan*/  group_desc; } ;

/* Variables and functions */
 struct ext4_group_desc* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(ext2_filsys fs, dgrp_t group)
{
	struct ext4_group_desc *gdp;

	gdp = FUNC0(fs, fs->group_desc, group);
	gdp->bg_flags = 0;
	return;
}