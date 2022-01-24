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
typedef  int JobType ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int _JOB_TYPE_MAX_MERGING ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int* job_merging_table ; 

JobType FUNC3(JobType a, JobType b) {
        FUNC2(FUNC0(job_merging_table) == _JOB_TYPE_MAX_MERGING * (_JOB_TYPE_MAX_MERGING - 1) / 2);
        FUNC1(a >= 0 && a < _JOB_TYPE_MAX_MERGING);
        FUNC1(b >= 0 && b < _JOB_TYPE_MAX_MERGING);

        if (a == b)
                return a;

        if (a < b) {
                JobType tmp = a;
                a = b;
                b = tmp;
        }

        return job_merging_table[(a - 1) * a / 2 + b];
}