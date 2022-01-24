#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  (* printResponseProc ) (TYPE_2__* const,TYPE_1__*) ;} ;
struct TYPE_12__ {int printMode; int /*<<< orphan*/  msg; } ;
typedef  TYPE_1__* ResponsePtr ;
typedef  int /*<<< orphan*/  Response ;
typedef  TYPE_2__* FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__* const,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__* const,TYPE_1__*) ; 
 int kResponseNoProc ; 
 int kResponseNoSave ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__* const,TYPE_1__*) ; 

void
FUNC5(const FTPCIPtr cip, ResponsePtr rp)
{
	if (rp != NULL) {
		FUNC2(cip, rp);
		if (cip->printResponseProc != 0) {
			if ((rp->printMode & kResponseNoProc) == 0)
				(*cip->printResponseProc)(cip, rp);
		}
		if ((rp->printMode & kResponseNoSave) == 0)
			FUNC1(cip, rp);
		else
			FUNC0(&rp->msg);
		(void) FUNC3(rp, 0, sizeof(Response));
	}
}