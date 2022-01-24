#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ an_refcnt; int /*<<< orphan*/  an_turn_cv; int /*<<< orphan*/  an_done; int /*<<< orphan*/  an_lock; } ;
typedef  TYPE_1__ kcf_areq_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void *buf, void *cdrarg)
{
	kcf_areq_node_t *areq = (kcf_areq_node_t *)buf;

	FUNC0(areq->an_refcnt == 0);
	FUNC2(&areq->an_lock);
	FUNC1(&areq->an_done);
	FUNC1(&areq->an_turn_cv);
}