#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct send_range {int dummy; } ;
struct redact_list_thread_arg {int error_code; int /*<<< orphan*/  q; int /*<<< orphan*/  resume; int /*<<< orphan*/ * rl; int /*<<< orphan*/  mark_redact; int /*<<< orphan*/  num_blocks_visited; int /*<<< orphan*/  cancel; } ;
struct redact_list_cb_arg {int /*<<< orphan*/  mark_redact; int /*<<< orphan*/  num_blocks_visited; int /*<<< orphan*/ * q; int /*<<< orphan*/ * cancel; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  fstrans_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DATA ; 
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct send_range*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct redact_list_cb_arg*) ; 
 struct send_range* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  redact_list_cb ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct redact_list_thread_arg *rlt_arg = arg;
	struct send_range *record;
	fstrans_cookie_t cookie = FUNC3();
	if (rlt_arg->rl != NULL) {
		struct redact_list_cb_arg rlcba = {0};
		rlcba.cancel = &rlt_arg->cancel;
		rlcba.q = &rlt_arg->q;
		rlcba.num_blocks_visited = rlt_arg->num_blocks_visited;
		rlcba.mark_redact = rlt_arg->mark_redact;
		int err = FUNC1(rlt_arg->rl,
		    &rlt_arg->resume, redact_list_cb, &rlcba);
		if (err != EINTR)
			rlt_arg->error_code = err;
	}
	record = FUNC2(DATA, 0, 0, 0, B_TRUE);
	FUNC0(&rlt_arg->q, record, sizeof (*record));
	FUNC4(cookie);
}