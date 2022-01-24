#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* result; void* name; int /*<<< orphan*/  bus; int /*<<< orphan*/  jobs; } ;
typedef  TYPE_1__ BusWaitForJobs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int,char const* const*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,void*,void*) ; 
 int FUNC4 (int,char*) ; 
 void* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(BusWaitForJobs *d, bool quiet, const char* const* extra_args) {
        int r = 0;

        FUNC0(d);

        while (!FUNC6(d->jobs)) {
                int q;

                q = FUNC1(d->bus);
                if (q < 0)
                        return FUNC4(q, "Failed to wait for response: %m");

                if (d->name && d->result) {
                        q = FUNC2(d, quiet, extra_args);
                        /* Return the first error as it is most likely to be
                         * meaningful. */
                        if (q < 0 && r == 0)
                                r = q;

                        FUNC3(q, "Got result %s/%m for job %s", d->result, d->name);
                }

                d->name = FUNC5(d->name);
                d->result = FUNC5(d->result);
        }

        return r;
}