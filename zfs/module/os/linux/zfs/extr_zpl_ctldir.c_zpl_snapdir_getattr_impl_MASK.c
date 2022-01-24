#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  z_os; } ;
typedef  TYPE_2__ zfsvfs_t ;
typedef  int /*<<< orphan*/  u32 ;
struct path {TYPE_1__* dentry; } ;
struct kstat {int nlink; int size; int /*<<< orphan*/  atime; int /*<<< orphan*/  mtime; int /*<<< orphan*/  ctime; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {struct inode* d_inode; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct kstat*) ; 

__attribute__((used)) static int
FUNC6(const struct path *path, struct kstat *stat,
    u32 request_mask, unsigned int query_flags)
{
	struct inode *ip = path->dentry->d_inode;
	zfsvfs_t *zfsvfs = FUNC0(ip);

	FUNC1(zfsvfs);
	FUNC5(ip, stat);

	stat->nlink = stat->size = 2;
	stat->ctime = stat->mtime = FUNC4(zfsvfs->z_os);
	stat->atime = FUNC3(ip);
	FUNC2(zfsvfs);

	return (0);
}