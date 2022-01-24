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
struct TYPE_7__ {int /*<<< orphan*/  rt_lock; TYPE_2__** rt_idhash; } ;
typedef  TYPE_1__ kcf_reqid_table_t ;
struct TYPE_8__ {int /*<<< orphan*/  an_done; struct TYPE_8__* an_idnext; struct TYPE_8__* an_idprev; } ;
typedef  TYPE_2__ kcf_areq_node_t ;
typedef  size_t crypto_req_id_t ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__*) ; 
 int FUNC1 (size_t) ; 
 size_t REQID_TABLE_MASK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__** kcf_reqid_table ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(kcf_areq_node_t *areq)
{
	int indx;
	kcf_areq_node_t *nextp, *prevp;
	crypto_req_id_t id = FUNC0(areq);
	kcf_reqid_table_t *rt;

	rt = kcf_reqid_table[id & REQID_TABLE_MASK];
	indx = FUNC1(id);

	FUNC4(&rt->rt_lock);

	nextp = areq->an_idnext;
	prevp = areq->an_idprev;
	if (nextp != NULL)
		nextp->an_idprev = prevp;
	if (prevp != NULL)
		prevp->an_idnext = nextp;
	else
		rt->rt_idhash[indx] = nextp;

	FUNC2(areq, 0);
	FUNC3(&areq->an_done);

	FUNC5(&rt->rt_lock);
}