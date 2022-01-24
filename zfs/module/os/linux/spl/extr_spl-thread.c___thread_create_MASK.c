#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int tp_name_size; size_t tp_len; int tp_state; int /*<<< orphan*/ * tp_name; int /*<<< orphan*/  tp_pri; void* tp_args; int /*<<< orphan*/  tp_func; int /*<<< orphan*/  tp_magic; } ;
typedef  TYPE_1__ thread_priv_t ;
typedef  int /*<<< orphan*/  thread_func_t ;
struct task_struct {int dummy; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  pri_t ;
typedef  int /*<<< orphan*/  kthread_t ;
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  KM_PUSHPAGE ; 
 int /*<<< orphan*/  TP_MAGIC ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 struct task_struct* FUNC4 (int /*<<< orphan*/ ,void*,char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  thread_generic_wrapper ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 

kthread_t *
FUNC9(caddr_t stk, size_t  stksize, thread_func_t func,
    const char *name, void *args, size_t len, proc_t *pp, int state, pri_t pri)
{
	thread_priv_t *tp;
	struct task_struct *tsk;
	char *p;

	/* Option pp is simply ignored */
	/* Variable stack size unsupported */
	FUNC0(stk == NULL);

	tp = FUNC2(sizeof (thread_priv_t), KM_PUSHPAGE);
	if (tp == NULL)
		return (NULL);

	tp->tp_magic = TP_MAGIC;
	tp->tp_name_size = FUNC5(name) + 1;

	tp->tp_name = FUNC2(tp->tp_name_size, KM_PUSHPAGE);
	if (tp->tp_name == NULL) {
		FUNC3(tp, sizeof (thread_priv_t));
		return (NULL);
	}

	FUNC6(tp->tp_name, name, tp->tp_name_size);

	/*
	 * Strip trailing "_thread" from passed name which will be the func
	 * name since the exposed API has no parameter for passing a name.
	 */
	p = FUNC7(tp->tp_name, "_thread");
	if (p)
		p[0] = '\0';

	tp->tp_func  = func;
	tp->tp_args  = args;
	tp->tp_len   = len;
	tp->tp_state = state;
	tp->tp_pri   = pri;

	tsk = FUNC4(thread_generic_wrapper, (void *)tp,
	    "%s", tp->tp_name);
	if (FUNC1(tsk))
		return (NULL);

	FUNC8(tsk);
	return ((kthread_t *)tsk);
}