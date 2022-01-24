#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_4__ {int /*<<< orphan*/ * spa_meta_objset; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_POOL_DELETED_CLONES ; 
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int ENOENT ; 
 int /*<<< orphan*/  dump_livelist_cb ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(spa_t *spa)
{
	uint64_t zap_obj;
	objset_t *mos = spa->spa_meta_objset;
	int err = FUNC2(mos, DMU_POOL_DIRECTORY_OBJECT,
	    DMU_POOL_DELETED_CLONES, sizeof (uint64_t), 1, &zap_obj);
	if (err == ENOENT)
		return;
	FUNC1(zap_obj);
	FUNC0(spa, dump_livelist_cb, NULL);
}