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
 scalar_t__ BG_E_INVALID_STATE ; 
 scalar_t__ BG_JOB_STATE_CANCELLED ; 
 scalar_t__ BG_JOB_STATE_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  test_job ; 

__attribute__((used)) static void FUNC3(void)
{
    HRESULT hr;
    BG_JOB_STATE state;

    state = BG_JOB_STATE_ERROR;
    hr = FUNC1(test_job, &state);
    FUNC2(hr == S_OK, "got 0x%08x\n", hr);
    FUNC2(state != BG_JOB_STATE_CANCELLED, "got %u\n", state);

    hr = FUNC0(test_job);
    FUNC2(hr == S_OK, "got 0x%08x\n", hr);

    state = BG_JOB_STATE_ERROR;
    hr = FUNC1(test_job, &state);
    FUNC2(hr == S_OK, "got 0x%08x\n", hr);
    FUNC2(state == BG_JOB_STATE_CANCELLED, "got %u\n", state);

    hr = FUNC0(test_job);
    FUNC2(hr == BG_E_INVALID_STATE, "got 0x%08x\n", hr);
}