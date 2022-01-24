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
typedef  int /*<<< orphan*/  IAudioEndpointVolume ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ E_POINTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,float*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,float,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IAudioEndpointVolume ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,float,float,float) ; 

__attribute__((used)) static void FUNC9(void)
{
    HRESULT hr;
    IAudioEndpointVolume *aev;
    float mindb, maxdb, increment, volume;
    BOOL mute;

    hr = FUNC6(dev, &IID_IAudioEndpointVolume,
            CLSCTX_INPROC_SERVER, NULL, (void**)&aev);
    FUNC7(hr == S_OK, "Activation failed with %08x\n", hr);
    if(hr != S_OK)
        return;

    hr = FUNC2(aev, &mindb, NULL, NULL);
    FUNC7(hr == E_POINTER, "GetVolumeRange should have failed with E_POINTER: 0x%08x\n", hr);

    hr = FUNC2(aev, &mindb, &maxdb, &increment);
    FUNC7(hr == S_OK, "GetVolumeRange failed: 0x%08x\n", hr);
    FUNC8("got range: [%f,%f]/%f\n", mindb, maxdb, increment);

    hr = FUNC4(aev, mindb - increment, NULL);
    FUNC7(hr == E_INVALIDARG, "SetMasterVolumeLevel failed: 0x%08x\n", hr);

    hr = FUNC0(aev, &volume);
    FUNC7(hr == S_OK, "GetMasterVolumeLevel failed: 0x%08x\n", hr);

    hr = FUNC4(aev, volume, NULL);
    FUNC7(hr == S_OK, "SetMasterVolumeLevel failed: 0x%08x\n", hr);

    hr = FUNC1(aev, &mute);
    FUNC7(hr == S_OK, "GetMute failed: %08x\n", hr);

    hr = FUNC5(aev, mute, NULL);
    FUNC7(hr == S_OK || hr == S_FALSE, "SetMute failed: %08x\n", hr);

    FUNC3(aev);
}