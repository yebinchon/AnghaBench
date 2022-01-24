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
typedef  int /*<<< orphan*/  znode_t ;
typedef  int /*<<< orphan*/  zfsvfs_t ;
struct page {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct inode*,struct page**,int) ; 

int
FUNC6(struct inode *ip, struct page *pl[], int nr_pages)
{
	znode_t	 *zp  = FUNC0(ip);
	zfsvfs_t *zfsvfs = FUNC1(ip);
	int	 err;

	if (pl == NULL)
		return (0);

	FUNC2(zfsvfs);
	FUNC4(zp);

	err = FUNC5(ip, pl, nr_pages);

	FUNC3(zfsvfs);
	return (err);
}