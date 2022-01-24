#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  gn_gbh; } ;
typedef  TYPE_1__ zio_gang_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  SPA_GANGBLOCKSIZE ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static zio_gang_node_t *
FUNC3(zio_gang_node_t **gnpp)
{
	zio_gang_node_t *gn;

	FUNC0(*gnpp == NULL);

	gn = FUNC1(sizeof (*gn), KM_SLEEP);
	gn->gn_gbh = FUNC2(SPA_GANGBLOCKSIZE);
	*gnpp = gn;

	return (gn);
}