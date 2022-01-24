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
typedef  int taskqid_t ;
struct TYPE_4__ {int tq_next_id; int /*<<< orphan*/  tq_wait_waitq; } ;
typedef  TYPE_1__ taskq_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(taskq_t *tq, taskqid_t id)
{
	id = id ? id : tq->tq_next_id - 1;
	FUNC1(tq->tq_wait_waitq, FUNC0(tq, id));
}