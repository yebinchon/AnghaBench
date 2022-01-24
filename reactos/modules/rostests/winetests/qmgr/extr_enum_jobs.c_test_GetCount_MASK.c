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
typedef  scalar_t__ ULONG ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  test_enumJobsA ; 
 int /*<<< orphan*/  test_enumJobsB ; 

__attribute__((used)) static void FUNC2(void)
{
    HRESULT hres;
    ULONG jobCountA, jobCountB;

    hres = FUNC0(test_enumJobsA, &jobCountA);
    FUNC1(hres == S_OK, "GetCount failed: %08x\n", hres);

    hres = FUNC0(test_enumJobsB, &jobCountB);
    FUNC1(hres == S_OK, "GetCount failed: %08x\n", hres);

    FUNC1(jobCountB == jobCountA + 1, "Got incorrect count\n");
}