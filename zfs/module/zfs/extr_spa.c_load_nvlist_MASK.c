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
struct TYPE_6__ {int /*<<< orphan*/  spa_meta_objset; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_7__ {scalar_t__ db_data; } ;
typedef  TYPE_2__ dmu_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_READ_PREFETCH ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC0 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,size_t,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,size_t,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 char* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t) ; 

__attribute__((used)) static int
FUNC6(spa_t *spa, uint64_t obj, nvlist_t **value)
{
	dmu_buf_t *db;
	char *packed = NULL;
	size_t nvsize = 0;
	int error;
	*value = NULL;

	error = FUNC0(spa->spa_meta_objset, obj, FTAG, &db);
	if (error)
		return (error);

	nvsize = *(uint64_t *)db->db_data;
	FUNC1(db, FTAG);

	packed = FUNC4(nvsize, KM_SLEEP);
	error = FUNC2(spa->spa_meta_objset, obj, 0, nvsize, packed,
	    DMU_READ_PREFETCH);
	if (error == 0)
		error = FUNC3(packed, nvsize, value, 0);
	FUNC5(packed, nvsize);

	return (error);
}