#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ pos; } ;
typedef  TYPE_1__ zpl_dir_context_t ;
struct TYPE_10__ {int /*<<< orphan*/  z_os; } ;
typedef  TYPE_2__ zfsvfs_t ;
typedef  scalar_t__ uint64_t ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  fstrans_cookie_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  DT_DIR ; 
 int ENOENT ; 
 int /*<<< orphan*/  FTAG ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int MAXNAMELEN ; 
 scalar_t__ ZFSCTL_INO_SHARES ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,char*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct file*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct file*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC13(struct file *filp, zpl_dir_context_t *ctx)
{
	zfsvfs_t *zfsvfs = FUNC0(FUNC7(filp));
	fstrans_cookie_t cookie;
	char snapname[MAXNAMELEN];
	boolean_t case_conflict;
	uint64_t id, pos;
	int error = 0;

	FUNC1(zfsvfs);
	cookie = FUNC8();

	if (!FUNC12(filp, ctx))
		goto out;

	pos = ctx->pos;
	while (error == 0) {
		FUNC5(FUNC3(zfsvfs->z_os), FTAG);
		error = -FUNC4(zfsvfs->z_os, MAXNAMELEN,
		    snapname, &id, &pos, &case_conflict);
		FUNC6(FUNC3(zfsvfs->z_os), FTAG);
		if (error)
			goto out;

		if (!FUNC11(ctx, snapname, FUNC10(snapname),
		    ZFSCTL_INO_SHARES - id, DT_DIR))
			goto out;

		ctx->pos = pos;
	}
out:
	FUNC9(cookie);
	FUNC2(zfsvfs);

	if (error == -ENOENT)
		return (0);

	return (error);
}