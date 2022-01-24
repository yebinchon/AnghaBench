#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int zv_volsize; int /*<<< orphan*/  zv_flags; int /*<<< orphan*/  zv_dn; int /*<<< orphan*/  zv_name; int /*<<< orphan*/ * zv_zilog; int /*<<< orphan*/  zv_suspend_lock; int /*<<< orphan*/  zv_state_lock; int /*<<< orphan*/ * zv_objset; } ;
typedef  TYPE_1__ zvol_state_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_8__ {int /*<<< orphan*/  (* zv_set_disk_ro ) (TYPE_1__*,int) ;int /*<<< orphan*/  (* zv_set_capacity ) (TYPE_1__*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  ZVOL_OBJ ; 
 int /*<<< orphan*/  ZVOL_RDONLY ; 
 int /*<<< orphan*/  ZVOL_WRITTEN_TO ; 
 int /*<<< orphan*/  ZVOL_ZAP_OBJ ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ *) ; 
 TYPE_6__* ops ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int,int*) ; 

__attribute__((used)) static int
FUNC13(zvol_state_t *zv)
{
	uint64_t volsize;
	int error;
	uint64_t ro;
	objset_t *os = zv->zv_objset;

	FUNC0(FUNC1(&zv->zv_state_lock));
	FUNC0(FUNC2(&zv->zv_suspend_lock));

	zv->zv_zilog = NULL;
	zv->zv_flags &= ~ZVOL_WRITTEN_TO;

	error = FUNC7(zv->zv_name, "readonly", &ro, NULL);
	if (error)
		return (FUNC3(error));

	error = FUNC12(os, ZVOL_ZAP_OBJ, "size", 8, 1, &volsize);
	if (error)
		return (FUNC3(error));

	error = FUNC6(os, ZVOL_OBJ, FTAG, &zv->zv_dn);
	if (error)
		return (FUNC3(error));

	ops->zv_set_capacity(zv, volsize >> 9);
	zv->zv_volsize = volsize;

	if (ro || FUNC4(os) ||
	    !FUNC8(FUNC5(os))) {
		ops->zv_set_disk_ro(zv, 1);
		zv->zv_flags |= ZVOL_RDONLY;
	} else {
		ops->zv_set_disk_ro(zv, 0);
		zv->zv_flags &= ~ZVOL_RDONLY;
	}
	return (0);
}