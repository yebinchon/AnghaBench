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
struct TYPE_4__ {scalar_t__ kr_savelen; scalar_t__ kr_saveoffset; int /*<<< orphan*/ * kr_areq; int /*<<< orphan*/  kr_callreq; } ;
typedef  TYPE_1__ kcf_dual_req_t ;
typedef  int /*<<< orphan*/  crypto_call_req_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 

kcf_dual_req_t *
FUNC3(crypto_call_req_t *crq)
{
	kcf_dual_req_t *kcr;

	kcr = FUNC2(sizeof (kcf_dual_req_t), FUNC0(crq));

	if (kcr == NULL)
		return (NULL);

	/* Copy the whole crypto_call_req struct, as it isn't persistent */
	if (crq != NULL)
		kcr->kr_callreq = *crq;
	else
		FUNC1(&(kcr->kr_callreq), sizeof (crypto_call_req_t));
	kcr->kr_areq = NULL;
	kcr->kr_saveoffset = 0;
	kcr->kr_savelen = 0;

	return (kcr);
}