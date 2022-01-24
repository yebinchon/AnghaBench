#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  znode_t ;
typedef  int /*<<< orphan*/  zfsvfs_t ;
struct TYPE_4__ {int lrc_txtype; } ;
struct TYPE_5__ {TYPE_1__ lr_common; int /*<<< orphan*/  lr_doid; } ;
typedef  TYPE_2__ lr_remove_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTSUP ; 
 int FIGNORECASE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TX_CI ; 
#define  TX_REMOVE 129 
#define  TX_RMDIR 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kcred ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC7(void *arg1, void *arg2, boolean_t byteswap)
{
	zfsvfs_t *zfsvfs = arg1;
	lr_remove_t *lr = arg2;
	char *name = (char *)(lr + 1);	/* name follows lr_remove_t */
	znode_t *dzp;
	int error;
	int vflg = 0;

	if (byteswap)
		FUNC2(lr, sizeof (*lr));

	if ((error = FUNC6(zfsvfs, lr->lr_doid, &dzp)) != 0)
		return (error);

	if (lr->lr_common.lrc_txtype & TX_CI)
		vflg |= FIGNORECASE;

	switch ((int)lr->lr_common.lrc_txtype) {
	case TX_REMOVE:
		error = FUNC4(FUNC1(dzp), name, kcred, vflg);
		break;
	case TX_RMDIR:
		error = FUNC5(FUNC1(dzp), name, NULL, kcred, vflg);
		break;
	default:
		error = FUNC0(ENOTSUP);
	}

	FUNC3(FUNC1(dzp));

	return (error);
}