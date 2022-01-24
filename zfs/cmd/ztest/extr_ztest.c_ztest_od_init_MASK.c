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
struct TYPE_3__ {int /*<<< orphan*/  od_name; scalar_t__ od_gen; scalar_t__ od_blocksize; int /*<<< orphan*/  od_type; void* od_crgen; void* od_crdnodesize; void* od_crblocksize; int /*<<< orphan*/  od_crtype; scalar_t__ od_object; int /*<<< orphan*/  od_dir; } ;
typedef  TYPE_1__ ztest_od_t ;
typedef  void* uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  longlong_t ;
typedef  int /*<<< orphan*/  dmu_object_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_OT_NONE ; 
 int /*<<< orphan*/  ZTEST_DIROBJ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 () ; 
 void* FUNC2 () ; 

__attribute__((used)) static void
FUNC3(ztest_od_t *od, uint64_t id, char *tag, uint64_t index,
    dmu_object_type_t type, uint64_t blocksize, uint64_t dnodesize,
    uint64_t gen)
{
	od->od_dir = ZTEST_DIROBJ;
	od->od_object = 0;

	od->od_crtype = type;
	od->od_crblocksize = blocksize ? blocksize : FUNC1();
	od->od_crdnodesize = dnodesize ? dnodesize : FUNC2();
	od->od_crgen = gen;

	od->od_type = DMU_OT_NONE;
	od->od_blocksize = 0;
	od->od_gen = 0;

	(void) FUNC0(od->od_name, sizeof (od->od_name), "%s(%lld)[%llu]",
	    tag, (longlong_t)id, (u_longlong_t)index);
}