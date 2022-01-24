#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ext2_filsys ;
struct TYPE_7__ {int /*<<< orphan*/  s_uuid; int /*<<< orphan*/  s_checksum_seed; } ;
struct TYPE_6__ {TYPE_3__* super; int /*<<< orphan*/  csum_seed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 

void FUNC4(ext2_filsys fs)
{
	if (FUNC1(fs->super))
		fs->csum_seed = fs->super->s_checksum_seed;
	else if (FUNC3(fs->super) ||
		 FUNC2(fs->super))
		fs->csum_seed = FUNC0(~0, fs->super->s_uuid,
						 sizeof(fs->super->s_uuid));
}