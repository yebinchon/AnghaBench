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
struct inode {int dummy; } ;
struct ext4_ext_path {scalar_t__ p_bh; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int FUNC0 (char const*,unsigned int,void*,int /*<<< orphan*/ *,struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC2 (void*,int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

int FUNC4(const char *where, unsigned int line,
		void *icb, handle_t *handle,
		struct inode *inode,
		struct ext4_ext_path *path)
{
	int err;

	if (path->p_bh) {
		FUNC1(inode, FUNC3(path->p_bh));
		/* path points to block */
		err = FUNC0(where, line, icb, handle, inode, path->p_bh);
	} else {
		/* path points to leaf/index in inode body */
		err = FUNC2(icb, handle, inode);
	}
	return err;
}