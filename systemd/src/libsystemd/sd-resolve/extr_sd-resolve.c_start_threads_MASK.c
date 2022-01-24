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
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_4__ {unsigned int n_outstanding; unsigned int n_valid_workers; int /*<<< orphan*/ * workers; } ;
typedef  TYPE_1__ sd_resolve ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  WORKERS_MAX ; 
 int /*<<< orphan*/  WORKERS_MIN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thread_worker ; 

__attribute__((used)) static int FUNC5(sd_resolve *resolve, unsigned extra) {
        sigset_t ss, saved_ss;
        unsigned n;
        int r, k;

        FUNC1(FUNC4(&ss) >= 0);

        /* No signals in forked off threads please. We set the mask before forking, so that the threads never exist
         * with a different mask than a fully blocked one */
        r = FUNC3(SIG_BLOCK, &ss, &saved_ss);
        if (r > 0)
                return -r;

        n = resolve->n_outstanding + extra;
        n = FUNC0(n, WORKERS_MIN, WORKERS_MAX);

        while (resolve->n_valid_workers < n) {
                r = FUNC2(&resolve->workers[resolve->n_valid_workers], NULL, thread_worker, resolve);
                if (r > 0) {
                        r = -r;
                        goto finish;
                }

                resolve->n_valid_workers++;
        }

        r = 0;

finish:
        k = FUNC3(SIG_SETMASK, &saved_ss, NULL);
        if (k > 0 && r >= 0)
                r = -k;

        return r;
}