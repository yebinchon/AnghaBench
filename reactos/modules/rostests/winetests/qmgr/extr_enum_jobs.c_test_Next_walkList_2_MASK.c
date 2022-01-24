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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  IBackgroundCopyJob ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  test_enumJobsB ; 
 int test_jobCountB ; 

__attribute__((used)) static void FUNC6(void)
{
    HRESULT hres;
    IBackgroundCopyJob **jobs;
    ULONG fetched;
    ULONG i;

    jobs = FUNC1(FUNC0(), 0, test_jobCountB * sizeof *jobs);
    for (i = 0; i < test_jobCountB; i++)
        jobs[i] = NULL;

    fetched = 0;
    hres = FUNC4(test_enumJobsB, test_jobCountB, jobs, &fetched);
    FUNC5(hres == S_OK, "Next failed: %08x\n", hres);
    FUNC5(fetched == test_jobCountB, "Next returned the incorrect number of jobs: %08x\n", hres);

    for (i = 0; i < test_jobCountB; i++)
    {
        FUNC5(jobs[i] != NULL, "Next returned NULL\n");
        if (jobs[i])
            FUNC3(jobs[i]);
    }

    FUNC2(FUNC0(), 0, jobs);
}