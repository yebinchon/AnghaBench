#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * ext2_filsys ;
typedef  scalar_t__ errcode_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

errcode_t FUNC2(ext2_filsys *fs_ptr)
{
	errcode_t ret;
	ext2_filsys fs = *fs_ptr;

	ret = FUNC0(fs, 0);
	if (ret)
		FUNC1(fs);
	*fs_ptr = NULL;
	return ret;
}