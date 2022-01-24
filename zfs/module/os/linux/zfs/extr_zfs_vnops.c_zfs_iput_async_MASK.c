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
typedef  int /*<<< orphan*/  task_func_t ;
struct inode {int /*<<< orphan*/  i_count; } ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_2__ {int /*<<< orphan*/ * z_os; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 scalar_t__ TASKQID_INVALID ; 
 int /*<<< orphan*/  TQ_SLEEP ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ) ; 

void
FUNC8(struct inode *ip)
{
	objset_t *os = FUNC1(ip)->z_os;

	FUNC0(FUNC3(&ip->i_count) > 0);
	FUNC0(os != NULL);

	if (FUNC3(&ip->i_count) == 1)
		FUNC2(FUNC7(FUNC5(FUNC4(os)),
		    (task_func_t *)iput, ip, TQ_SLEEP) != TASKQID_INVALID);
	else
		FUNC6(ip);
}