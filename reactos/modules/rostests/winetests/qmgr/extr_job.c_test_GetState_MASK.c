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
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ BG_JOB_STATE ;

/* Variables and functions */
 scalar_t__ BG_JOB_STATE_ERROR ; 
 scalar_t__ BG_JOB_STATE_SUSPENDED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  test_job ; 

__attribute__((used)) static void FUNC2(void)
{
    HRESULT hres;
    BG_JOB_STATE state;

    state = BG_JOB_STATE_ERROR;
    hres = FUNC0(test_job, &state);
    FUNC1(hres == S_OK, "GetState failed: 0x%08x\n", hres);
    FUNC1(state == BG_JOB_STATE_SUSPENDED, "Incorrect job state: %d\n", state);
}