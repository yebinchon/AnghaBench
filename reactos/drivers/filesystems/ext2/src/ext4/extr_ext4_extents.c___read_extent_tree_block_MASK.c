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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 struct buffer_head* FUNC0 (int) ; 
 int FUNC1 (char const*,unsigned int,struct inode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 struct buffer_head* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 

__attribute__((used)) static struct buffer_head *
FUNC8(const char *function, unsigned int line,
		struct inode *inode, ext4_fsblk_t pblk, int depth,
		int flags)
{
	struct buffer_head		*bh;
	int				err;

	bh = FUNC5(inode->i_sb, pblk);
	if (!bh)
		return FUNC0(-ENOMEM);

	if (!FUNC2(bh)) {
		err = -EIO;
		goto errout;
	}
	if (FUNC3(bh))
		return bh;
	err = FUNC1(function, line, inode,
			FUNC4(bh), depth, pblk);
	if (err)
		goto errout;
	FUNC7(bh);
	return bh;
errout:
	FUNC6(bh);
	return FUNC0(err);

}