#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct ext4_ext_path {TYPE_1__* p_hdr; int /*<<< orphan*/  p_idx; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;
struct TYPE_2__ {scalar_t__ eh_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (void*,int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int FUNC3 (void*,int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

int FUNC7(void *icb, handle_t *handle, struct inode *inode,
		struct ext4_ext_path *path)
{
	int err;
	ext4_fsblk_t leaf;

	/* free index block */
	path--;
	leaf = FUNC5(path->p_idx);
	FUNC0(path->p_hdr->eh_entries == 0);
	if ((err = FUNC3(icb, handle, inode, path)))
		return err;
	path->p_hdr->eh_entries = FUNC1(FUNC6(path->p_hdr->eh_entries)-1);
	if ((err = FUNC2(icb, handle, inode, path)))
		return err;
	FUNC4(icb, handle, inode, NULL, leaf, 1, 0);
	return err;
}