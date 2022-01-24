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
struct redact_record {int /*<<< orphan*/  eos_marker; } ;
struct redact_merge_thread_arg {int /*<<< orphan*/  q; int /*<<< orphan*/  cancel; int /*<<< orphan*/  thr_args; int /*<<< orphan*/  numsnaps; int /*<<< orphan*/  error_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct redact_record*,int) ; 
 struct redact_record* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct redact_merge_thread_arg *rmta = arg;
	rmta->error_code = FUNC2(&rmta->q,
	    rmta->numsnaps, rmta->thr_args, &rmta->cancel);
	struct redact_record *rec = FUNC1(sizeof (*rec), KM_SLEEP);
	rec->eos_marker = B_TRUE;
	FUNC0(&rmta->q, rec, 1);
	FUNC3();
}