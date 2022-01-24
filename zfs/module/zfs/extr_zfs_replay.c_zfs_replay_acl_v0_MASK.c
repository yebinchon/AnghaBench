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
typedef  int /*<<< orphan*/  znode_t ;
typedef  int /*<<< orphan*/  zfsvfs_t ;
struct TYPE_6__ {int vsa_mask; int vsa_aclcnt; int vsa_aclentsz; int /*<<< orphan*/ * vsa_aclentp; scalar_t__ vsa_aclflags; } ;
typedef  TYPE_1__ vsecattr_t ;
typedef  int /*<<< orphan*/  vsa ;
struct TYPE_7__ {int lr_aclcnt; int /*<<< orphan*/  lr_foid; } ;
typedef  TYPE_2__ lr_acl_v0_t ;
typedef  scalar_t__ boolean_t ;
typedef  int /*<<< orphan*/  ace_t ;

/* Variables and functions */
 int VSA_ACE ; 
 int VSA_ACECNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kcred ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC7(void *arg1, void *arg2, boolean_t byteswap)
{
	zfsvfs_t *zfsvfs = arg1;
	lr_acl_v0_t *lr = arg2;
	ace_t *ace = (ace_t *)(lr + 1);	/* ace array follows lr_acl_t */
	vsecattr_t vsa;
	znode_t *zp;
	int error;

	if (byteswap) {
		FUNC1(lr, sizeof (*lr));
		FUNC4(ace, lr->lr_aclcnt);
	}

	if ((error = FUNC6(zfsvfs, lr->lr_foid, &zp)) != 0)
		return (error);

	FUNC2(&vsa, sizeof (vsa));
	vsa.vsa_mask = VSA_ACE | VSA_ACECNT;
	vsa.vsa_aclcnt = lr->lr_aclcnt;
	vsa.vsa_aclentsz = sizeof (ace_t) * vsa.vsa_aclcnt;
	vsa.vsa_aclflags = 0;
	vsa.vsa_aclentp = ace;

	error = FUNC5(FUNC0(zp), &vsa, 0, kcred);

	FUNC3(FUNC0(zp));

	return (error);
}