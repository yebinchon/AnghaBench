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
typedef  int /*<<< orphan*/  zfs_refcount_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_7__ {scalar_t__ mc_alloc; scalar_t__ mc_deferred; scalar_t__ mc_space; scalar_t__ mc_dspace; int /*<<< orphan*/  mc_metaslab_txg_list; int /*<<< orphan*/  mc_lock; TYPE_1__* mc_spa; struct TYPE_7__* mc_alloc_max_slots; struct TYPE_7__* mc_alloc_slots; int /*<<< orphan*/ * mc_rotor; } ;
typedef  TYPE_2__ metaslab_class_t ;
struct TYPE_6__ {int spa_alloc_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void
FUNC5(metaslab_class_t *mc)
{
	FUNC0(mc->mc_rotor == NULL);
	FUNC0(mc->mc_alloc == 0);
	FUNC0(mc->mc_deferred == 0);
	FUNC0(mc->mc_space == 0);
	FUNC0(mc->mc_dspace == 0);

	for (int i = 0; i < mc->mc_spa->spa_alloc_count; i++)
		FUNC4(&mc->mc_alloc_slots[i]);
	FUNC1(mc->mc_alloc_slots, mc->mc_spa->spa_alloc_count *
	    sizeof (zfs_refcount_t));
	FUNC1(mc->mc_alloc_max_slots, mc->mc_spa->spa_alloc_count *
	    sizeof (uint64_t));
	FUNC3(&mc->mc_lock);
	FUNC2(mc->mc_metaslab_txg_list);
	FUNC1(mc, sizeof (metaslab_class_t));
}