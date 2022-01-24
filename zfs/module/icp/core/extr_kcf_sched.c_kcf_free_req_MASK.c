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
struct TYPE_4__ {int /*<<< orphan*/ * an_tried_plist; int /*<<< orphan*/ * an_context; int /*<<< orphan*/  an_provider; } ;
typedef  TYPE_1__ kcf_areq_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kcf_areq_cache ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void
FUNC4(kcf_areq_node_t *areq)
{
	FUNC1(areq->an_provider);
	if (areq->an_context != NULL)
		FUNC0(areq->an_context);

	if (areq->an_tried_plist != NULL)
		FUNC2(areq->an_tried_plist);
	FUNC3(kcf_areq_cache, areq);
}