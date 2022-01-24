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
typedef  size_t uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
struct TYPE_6__ {scalar_t__ spa_config_object; int /*<<< orphan*/  spa_meta_objset; } ;
typedef  TYPE_1__ spa_t ;
struct TYPE_7__ {scalar_t__ db_data; } ;
typedef  TYPE_2__ dmu_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC5(spa_t *spa)
{
	dmu_buf_t *db;
	size_t nvsize = 0;
	int error = 0;


	error = FUNC0(spa->spa_meta_objset,
	    spa->spa_config_object, FTAG, &db);

	if (error == 0) {
		nvsize = *(uint64_t *)db->db_data;
		FUNC1(db, FTAG);

		(void) FUNC4("\nMOS Configuration:\n");
		FUNC2(spa->spa_meta_objset,
		    spa->spa_config_object, (void *)&nvsize, 1);
	} else {
		(void) FUNC3(stderr, "dmu_bonus_hold(%d) failed, errno %d",
		    (u_longlong_t)spa->spa_config_object, error);
	}
}