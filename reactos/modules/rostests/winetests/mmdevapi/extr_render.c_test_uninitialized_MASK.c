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
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int /*<<< orphan*/  REFERENCE_TIME ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IAudioClient ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 scalar_t__ AUDCLNT_E_NOT_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IAudioStreamVolume ; 
 int /*<<< orphan*/  FUNC10 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC11(IAudioClient *ac)
{
    HRESULT hr;
    UINT32 num;
    REFERENCE_TIME t1;

    HANDLE handle = FUNC1(NULL, FALSE, FALSE, NULL);
    IUnknown *unk;

    hr = FUNC2(ac, &num);
    FUNC10(hr == AUDCLNT_E_NOT_INITIALIZED, "Uninitialized GetBufferSize call returns %08x\n", hr);

    hr = FUNC5(ac, &t1);
    FUNC10(hr == AUDCLNT_E_NOT_INITIALIZED, "Uninitialized GetStreamLatency call returns %08x\n", hr);

    hr = FUNC3(ac, &num);
    FUNC10(hr == AUDCLNT_E_NOT_INITIALIZED, "Uninitialized GetCurrentPadding call returns %08x\n", hr);

    hr = FUNC8(ac);
    FUNC10(hr == AUDCLNT_E_NOT_INITIALIZED, "Uninitialized Start call returns %08x\n", hr);

    hr = FUNC9(ac);
    FUNC10(hr == AUDCLNT_E_NOT_INITIALIZED, "Uninitialized Stop call returns %08x\n", hr);

    hr = FUNC6(ac);
    FUNC10(hr == AUDCLNT_E_NOT_INITIALIZED, "Uninitialized Reset call returns %08x\n", hr);

    hr = FUNC7(ac, handle);
    FUNC10(hr == AUDCLNT_E_NOT_INITIALIZED, "Uninitialized SetEventHandle call returns %08x\n", hr);

    hr = FUNC4(ac, &IID_IAudioStreamVolume, (void**)&unk);
    FUNC10(hr == AUDCLNT_E_NOT_INITIALIZED, "Uninitialized GetService call returns %08x\n", hr);

    FUNC0(handle);
}