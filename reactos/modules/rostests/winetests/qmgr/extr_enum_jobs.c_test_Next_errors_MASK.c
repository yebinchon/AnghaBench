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
typedef  int /*<<< orphan*/  IBackgroundCopyJob ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  test_enumJobsB ; 

__attribute__((used)) static void FUNC2(void)
{
    HRESULT hres;
    IBackgroundCopyJob *jobs[2];

    /* E_INVALIDARG: pceltFetched can ONLY be NULL if celt is 1 */
    hres = FUNC0(test_enumJobsB, 2, jobs, NULL);
    FUNC1(hres != S_OK, "Invalid call to Next succeeded: %08x\n", hres);
}