#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  vdev_guid; } ;
typedef  TYPE_1__ vdev_t ;
struct TYPE_9__ {int aux_count; int /*<<< orphan*/  aux_guid; } ;
typedef  TYPE_2__ spa_aux_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;
typedef  int /*<<< orphan*/  avl_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int,int /*<<< orphan*/ ) ; 

void
FUNC3(vdev_t *vd, avl_tree_t *avl)
{
	avl_index_t where;
	spa_aux_t search;
	spa_aux_t *aux;

	search.aux_guid = vd->vdev_guid;
	if ((aux = FUNC0(avl, &search, &where)) != NULL) {
		aux->aux_count++;
	} else {
		aux = FUNC2(sizeof (spa_aux_t), KM_SLEEP);
		aux->aux_guid = vd->vdev_guid;
		aux->aux_count = 1;
		FUNC1(avl, aux, where);
	}
}