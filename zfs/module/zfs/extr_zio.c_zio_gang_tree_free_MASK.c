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
struct TYPE_4__ {struct TYPE_4__** gn_child; } ;
typedef  TYPE_1__ zio_gang_node_t ;

/* Variables and functions */
 int SPA_GBH_NBLKPTRS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 

__attribute__((used)) static void
FUNC1(zio_gang_node_t **gnpp)
{
	zio_gang_node_t *gn = *gnpp;

	if (gn == NULL)
		return;

	for (int g = 0; g < SPA_GBH_NBLKPTRS; g++)
		FUNC1(&gn->gn_child[g]);

	FUNC0(gnpp);
}