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
struct TYPE_6__ {int rt_curid; int /*<<< orphan*/  rt_lock; TYPE_2__** rt_idhash; } ;
typedef  TYPE_1__ kcf_reqid_table_t ;
struct TYPE_7__ {struct TYPE_7__* an_idprev; struct TYPE_7__* an_idnext; } ;
typedef  TYPE_2__ kcf_areq_node_t ;
typedef  int crypto_req_id_t ;

/* Variables and functions */
 size_t CPU_SEQID ; 
 int REQID_COUNTER_HIGH ; 
 int REQID_COUNTER_LOW ; 
 int FUNC0 (int) ; 
 size_t REQID_TABLE_MASK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 TYPE_1__** kcf_reqid_table ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static crypto_req_id_t
FUNC6(kcf_areq_node_t *areq)
{
	int indx;
	crypto_req_id_t id;
	kcf_areq_node_t *headp;
	kcf_reqid_table_t *rt;

	FUNC2();
	rt = kcf_reqid_table[CPU_SEQID & REQID_TABLE_MASK];
	FUNC3();

	FUNC4(&rt->rt_lock);

	rt->rt_curid = id =
	    (rt->rt_curid - REQID_COUNTER_LOW) | REQID_COUNTER_HIGH;
	FUNC1(areq, id);
	indx = FUNC0(id);
	headp = areq->an_idnext = rt->rt_idhash[indx];
	areq->an_idprev = NULL;
	if (headp != NULL)
		headp->an_idprev = areq;

	rt->rt_idhash[indx] = areq;
	FUNC5(&rt->rt_lock);

	return (id);
}