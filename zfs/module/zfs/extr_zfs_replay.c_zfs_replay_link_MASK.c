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
struct TYPE_5__ {TYPE_1__ lr_common; int /*<<< orphan*/  lr_link_obj; int /*<<< orphan*/  lr_doid; } ;
typedef  TYPE_2__ lr_link_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int FIGNORECASE ; 
 int TX_CI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kcred ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC5(void *arg1, void *arg2, boolean_t byteswap)
{
	zfsvfs_t *zfsvfs = arg1;
	lr_link_t *lr = arg2;
	char *name = (char *)(lr + 1);	/* name follows lr_link_t */
	znode_t *dzp, *zp;
	int error;
	int vflg = 0;

	if (byteswap)
		FUNC1(lr, sizeof (*lr));

	if ((error = FUNC4(zfsvfs, lr->lr_doid, &dzp)) != 0)
		return (error);

	if ((error = FUNC4(zfsvfs, lr->lr_link_obj, &zp)) != 0) {
		FUNC2(FUNC0(dzp));
		return (error);
	}

	if (lr->lr_common.lrc_txtype & TX_CI)
		vflg |= FIGNORECASE;

	error = FUNC3(FUNC0(dzp), FUNC0(zp), name, kcred, vflg);

	FUNC2(FUNC0(zp));
	FUNC2(FUNC0(dzp));

	return (error);
}