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
typedef  int /*<<< orphan*/  WAVEFORMATEX ;
typedef  int /*<<< orphan*/  IAudioClient ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ AUDCLNT_E_EVENTHANDLE_NOT_SET ; 
 int /*<<< orphan*/  AUDCLNT_SHAREMODE_SHARED ; 
 int /*<<< orphan*/  AUDCLNT_STREAMFLAGS_EVENTCALLBACK ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ D3D11_ERROR_4E ; 
 int /*<<< orphan*/  ERROR_INVALID_NAME ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ E_UNEXPECTED ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IAudioClient ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ WAIT_TIMEOUT ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 

__attribute__((used)) static void FUNC15(void)
{
    HANDLE event;
    HRESULT hr;
    DWORD r;
    IAudioClient *ac;
    WAVEFORMATEX *pwfx;

    hr = FUNC11(dev, &IID_IAudioClient, CLSCTX_INPROC_SERVER,
            NULL, (void**)&ac);
    FUNC14(hr == S_OK, "Activation failed with %08x\n", hr);
    if(hr != S_OK)
        return;

    hr = FUNC4(ac, &pwfx);
    FUNC14(hr == S_OK, "GetMixFormat failed: %08x\n", hr);

    hr = FUNC5(ac, AUDCLNT_SHAREMODE_SHARED,
            AUDCLNT_STREAMFLAGS_EVENTCALLBACK, 5000000,
            0, pwfx, NULL);
    FUNC14(hr == S_OK, "Initialize failed: %08x\n", hr);

    FUNC1(pwfx);

    event = FUNC2(NULL, FALSE, FALSE, NULL);
    FUNC14(event != NULL, "CreateEvent failed\n");

    hr = FUNC9(ac);
    FUNC14(hr == AUDCLNT_E_EVENTHANDLE_NOT_SET ||
            hr == D3D11_ERROR_4E /* win10 */, "Start failed: %08x\n", hr);

    hr = FUNC8(ac, event);
    FUNC14(hr == S_OK, "SetEventHandle failed: %08x\n", hr);

    hr = FUNC8(ac, event);
    FUNC14(hr == FUNC3(ERROR_INVALID_NAME) ||
            hr == E_UNEXPECTED /* win10 */, "SetEventHandle returns %08x\n", hr);

    r = FUNC13(event, 40);
    FUNC14(r == WAIT_TIMEOUT, "Wait(event) before Start gave %x\n", r);

    hr = FUNC9(ac);
    FUNC14(hr == S_OK, "Start failed: %08x\n", hr);

    r = FUNC13(event, 20);
    FUNC14(r == WAIT_OBJECT_0, "Wait(event) after Start gave %x\n", r);

    hr = FUNC10(ac);
    FUNC14(hr == S_OK, "Stop failed: %08x\n", hr);

    FUNC14(FUNC12(event), "ResetEvent\n");

    /* Still receiving events! */
    r = FUNC13(event, 20);
    FUNC14(r == WAIT_OBJECT_0, "Wait(event) after Stop gave %x\n", r);

    hr = FUNC7(ac);
    FUNC14(hr == S_OK, "Reset failed: %08x\n", hr);

    FUNC14(FUNC12(event), "ResetEvent\n");

    r = FUNC13(event, 120);
    FUNC14(r == WAIT_OBJECT_0, "Wait(event) after Reset gave %x\n", r);

    hr = FUNC8(ac, NULL);
    FUNC14(hr == E_INVALIDARG, "SetEventHandle(NULL) returns %08x\n", hr);

    r = FUNC13(event, 70);
    FUNC14(r == WAIT_OBJECT_0, "Wait(NULL event) gave %x\n", r);

    /* test releasing a playing stream */
    hr = FUNC9(ac);
    FUNC14(hr == S_OK, "Start failed: %08x\n", hr);
    FUNC6(ac);

    FUNC0(event);
}