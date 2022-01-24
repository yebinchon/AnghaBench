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
struct TYPE_3__ {int /*<<< orphan*/  db_holds; int /*<<< orphan*/  db_cache_link; int /*<<< orphan*/  db_changed; int /*<<< orphan*/  db_rwlock; int /*<<< orphan*/  db_mtx; } ;
typedef  TYPE_1__ dmu_buf_impl_t ;

/* Variables and functions */
 int /*<<< orphan*/  CV_DEFAULT ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 int /*<<< orphan*/  RW_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(void *vdb, void *unused, int kmflag)
{
	dmu_buf_impl_t *db = vdb;
	FUNC0(db, sizeof (dmu_buf_impl_t));

	FUNC3(&db->db_mtx, NULL, MUTEX_DEFAULT, NULL);
	FUNC4(&db->db_rwlock, NULL, RW_DEFAULT, NULL);
	FUNC1(&db->db_changed, NULL, CV_DEFAULT, NULL);
	FUNC2(&db->db_cache_link);
	FUNC5(&db->db_holds);

	return (0);
}