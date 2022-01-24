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
struct ext2_xattr_handle {int dummy; } ;
typedef  int /*<<< orphan*/  ext2_ino_t ;
typedef  int /*<<< orphan*/  ext2_filsys ;
typedef  scalar_t__ errcode_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ext2_xattr_handle*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ext2_xattr_handle**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ext2_xattr_handle**) ; 
 scalar_t__ FUNC3 (struct ext2_xattr_handle*) ; 

errcode_t FUNC4(ext2_filsys fs, ext2_ino_t ino)
{
	struct ext2_xattr_handle *handle;
	errcode_t retval;

	retval = FUNC2(fs, ino, &handle);
	if (retval)
		return retval;

	retval = FUNC3(handle);
	if (retval)
		goto err;

	retval = FUNC0(handle, "system.data");
err:
	(void) FUNC1(&handle);
	return retval;
}