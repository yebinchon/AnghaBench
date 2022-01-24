#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int pos; } ;
typedef  TYPE_1__ zpl_dir_context_t ;
typedef  int /*<<< orphan*/  zfsvfs_t ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_DIR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFSCTL_INO_SHARES ; 
 int /*<<< orphan*/  ZFSCTL_INO_SNAPDIR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ZFS_SHAREDIR_NAME ; 
 int /*<<< orphan*/  ZFS_SNAPDIR_NAME ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct file*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC7(struct file *filp, zpl_dir_context_t *ctx)
{
	zfsvfs_t *zfsvfs = FUNC0(FUNC3(filp));
	int error = 0;

	FUNC1(zfsvfs);

	if (!FUNC6(filp, ctx))
		goto out;

	if (ctx->pos == 2) {
		if (!FUNC5(ctx, ZFS_SNAPDIR_NAME,
		    FUNC4(ZFS_SNAPDIR_NAME), ZFSCTL_INO_SNAPDIR, DT_DIR))
			goto out;

		ctx->pos++;
	}

	if (ctx->pos == 3) {
		if (!FUNC5(ctx, ZFS_SHAREDIR_NAME,
		    FUNC4(ZFS_SHAREDIR_NAME), ZFSCTL_INO_SHARES, DT_DIR))
			goto out;

		ctx->pos++;
	}
out:
	FUNC2(zfsvfs);

	return (error);
}