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
typedef  scalar_t__ OAFilterState ;
typedef  int /*<<< orphan*/  IMediaControl ;
typedef  int /*<<< orphan*/  IFilterGraph2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IMediaControl ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int INFINITE ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 scalar_t__ State_Paused ; 
 scalar_t__ State_Running ; 
 scalar_t__ State_Stopped ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC8(IFilterGraph2 *graph)
{
    IMediaControl *control;
    OAFilterState state;
    HRESULT hr;

    hr = FUNC0(graph, &IID_IMediaControl, (void **)&control);
    FUNC7(hr == S_OK, "QueryInterface(IMediaControl) failed: %x\n", hr);

    hr = FUNC1(control, 1000, &state);
    FUNC7(hr == S_OK, "GetState() failed: %x\n", hr);
    FUNC7(state == State_Stopped, "wrong state %d\n", state);

    hr = FUNC4(control);
    FUNC7(FUNC6(hr), "Run() failed: %x\n", hr);
    hr = FUNC1(control, INFINITE, &state);
    FUNC7(FUNC6(hr), "GetState() failed: %x\n", hr);
    FUNC7(state == State_Running, "wrong state %d\n", state);

    hr = FUNC5(control);
    FUNC7(FUNC6(hr), "Stop() failed: %x\n", hr);
    hr = FUNC1(control, 1000, &state);
    FUNC7(hr == S_OK, "GetState() failed: %x\n", hr);
    FUNC7(state == State_Stopped, "wrong state %d\n", state);

    hr = FUNC2(control);
    FUNC7(FUNC6(hr), "Pause() failed: %x\n", hr);
    hr = FUNC1(control, 1000, &state);
    FUNC7(hr == S_OK, "GetState() failed: %x\n", hr);
    FUNC7(state == State_Paused, "wrong state %d\n", state);

    hr = FUNC4(control);
    FUNC7(FUNC6(hr), "Run() failed: %x\n", hr);
    hr = FUNC1(control, 1000, &state);
    FUNC7(hr == S_OK, "GetState() failed: %x\n", hr);
    FUNC7(state == State_Running, "wrong state %d\n", state);

    hr = FUNC2(control);
    FUNC7(FUNC6(hr), "Pause() failed: %x\n", hr);
    hr = FUNC1(control, 1000, &state);
    FUNC7(hr == S_OK, "GetState() failed: %x\n", hr);
    FUNC7(state == State_Paused, "wrong state %d\n", state);

    hr = FUNC5(control);
    FUNC7(FUNC6(hr), "Stop() failed: %x\n", hr);
    hr = FUNC1(control, 1000, &state);
    FUNC7(hr == S_OK, "GetState() failed: %x\n", hr);
    FUNC7(state == State_Stopped, "wrong state %d\n", state);

    FUNC3(control);
}