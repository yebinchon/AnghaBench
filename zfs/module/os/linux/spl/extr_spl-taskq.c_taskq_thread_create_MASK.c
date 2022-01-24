#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * tqt_thread; int /*<<< orphan*/  tqt_id; TYPE_2__* tqt_tq; int /*<<< orphan*/  tqt_active_list; int /*<<< orphan*/  tqt_thread_list; } ;
typedef  TYPE_1__ taskq_thread_t ;
struct TYPE_9__ {int /*<<< orphan*/  tq_pri; int /*<<< orphan*/  tq_name; } ;
typedef  TYPE_2__ taskq_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KM_PUSHPAGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASKQID_INVALID ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ spl_taskq_thread_bind ; 
 scalar_t__ spl_taskq_thread_priority ; 
 int /*<<< orphan*/  taskq_thread ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static taskq_thread_t *
FUNC9(taskq_t *tq)
{
	static int last_used_cpu = 0;
	taskq_thread_t *tqt;

	tqt = FUNC2(sizeof (*tqt), KM_PUSHPAGE);
	FUNC0(&tqt->tqt_thread_list);
	FUNC0(&tqt->tqt_active_list);
	tqt->tqt_tq = tq;
	tqt->tqt_id = TASKQID_INVALID;

	tqt->tqt_thread = FUNC7(taskq_thread, tqt,
	    "%s", tq->tq_name);
	if (tqt->tqt_thread == NULL) {
		FUNC3(tqt, sizeof (taskq_thread_t));
		return (NULL);
	}

	if (spl_taskq_thread_bind) {
		last_used_cpu = (last_used_cpu + 1) % FUNC5();
		FUNC4(tqt->tqt_thread, last_used_cpu);
	}

	if (spl_taskq_thread_priority)
		FUNC6(tqt->tqt_thread, FUNC1(tq->tq_pri));

	FUNC8(tqt->tqt_thread);

	return (tqt);
}