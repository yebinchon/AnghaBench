#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_5__ {TYPE_2__* db_data; } ;
typedef  TYPE_1__ dmu_buf_t ;
struct TYPE_6__ {scalar_t__ bt_begin; scalar_t__ bt_end; } ;
typedef  TYPE_2__ bptree_phys_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

boolean_t
FUNC3(objset_t *os, uint64_t obj)
{
	dmu_buf_t *db;
	bptree_phys_t *bt;
	boolean_t rv;

	FUNC0(FUNC1(os, obj, FTAG, &db));
	bt = db->db_data;
	rv = (bt->bt_begin == bt->bt_end);
	FUNC2(db, FTAG);
	return (rv);
}