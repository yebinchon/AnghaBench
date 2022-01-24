#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ z_projectquota_obj; scalar_t__ z_userquota_obj; scalar_t__ z_groupquota_obj; int /*<<< orphan*/  z_os; scalar_t__ z_replay; } ;
typedef  TYPE_1__ zfsvfs_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  longlong_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int B_FALSE ; 
 scalar_t__ DMU_GROUPUSED_OBJECT ; 
 scalar_t__ DMU_PROJECTUSED_OBJECT ; 
 scalar_t__ DMU_USERUSED_OBJECT ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,char*,int,int,scalar_t__*) ; 

boolean_t
FUNC8(zfsvfs_t *zfsvfs, uint64_t usedobj, uint64_t id)
{
	char buf[20];
	uint64_t used, quota, quotaobj;
	int err;

	if (usedobj == DMU_PROJECTUSED_OBJECT) {
		if (!FUNC2(zfsvfs->z_os)) {
			if (FUNC3(zfsvfs->z_os)) {
				FUNC4(
				    FUNC1(zfsvfs->z_os), FTAG);
				FUNC0(zfsvfs->z_os);
				FUNC5(
				    FUNC1(zfsvfs->z_os), FTAG);
			}
			return (B_FALSE);
		}
		quotaobj = zfsvfs->z_projectquota_obj;
	} else if (usedobj == DMU_USERUSED_OBJECT) {
		quotaobj = zfsvfs->z_userquota_obj;
	} else if (usedobj == DMU_GROUPUSED_OBJECT) {
		quotaobj = zfsvfs->z_groupquota_obj;
	} else {
		return (B_FALSE);
	}
	if (quotaobj == 0 || zfsvfs->z_replay)
		return (B_FALSE);

	(void) FUNC6(buf, "%llx", (longlong_t)id);
	err = FUNC7(zfsvfs->z_os, quotaobj, buf, 8, 1, &quota);
	if (err != 0)
		return (B_FALSE);

	err = FUNC7(zfsvfs->z_os, usedobj, buf, 8, 1, &used);
	if (err != 0)
		return (B_FALSE);
	return (used >= quota);
}