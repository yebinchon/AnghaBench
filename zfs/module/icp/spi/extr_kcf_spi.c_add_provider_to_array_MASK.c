#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* pl_provider; struct TYPE_7__* pl_next; } ;
typedef  TYPE_1__ kcf_provider_list_t ;
struct TYPE_8__ {int /*<<< orphan*/  pd_lock; TYPE_1__* pd_provider_list; } ;
typedef  TYPE_2__ kcf_provider_desc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(kcf_provider_desc_t *p1, kcf_provider_desc_t *p2)
{
	kcf_provider_list_t *new;

	new = FUNC1(sizeof (kcf_provider_list_t), KM_SLEEP);
	FUNC2(&p2->pd_lock);
	new->pl_next = p2->pd_provider_list;
	p2->pd_provider_list = new;
	FUNC0(p1);
	new->pl_provider = p1;
	FUNC3(&p2->pd_lock);
}