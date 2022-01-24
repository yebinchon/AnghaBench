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
typedef  int /*<<< orphan*/  demux_t ;
typedef  int /*<<< orphan*/  IMMDeviceEnumerator ;
typedef  int /*<<< orphan*/  IMMDevice ;
typedef  void IAudioClient ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  ERole ;
typedef  scalar_t__ EDataFlow ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_ALL ; 
 int /*<<< orphan*/  CLSID_MMDeviceEnumerator ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IAudioClient ; 
 int /*<<< orphan*/  IID_IMMDeviceEnumerator ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ eCapture ; 
 int /*<<< orphan*/  eCommunications ; 
 int /*<<< orphan*/  eConsole ; 
 scalar_t__ eRender ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static IAudioClient *FUNC9(demux_t *demux, bool *restrict loopbackp)
{
    IMMDeviceEnumerator *e;
    IMMDevice *dev;
    void *pv;
    HRESULT hr;

    hr = FUNC0(&CLSID_MMDeviceEnumerator, NULL, CLSCTX_ALL,
                          &IID_IMMDeviceEnumerator, &pv);
    if (FUNC1(hr))
    {
        FUNC7(demux, "cannot create device enumerator (error 0x%lX)", hr);
        return NULL;
    }
    e = pv;

    bool loopback = FUNC8(demux, "wasapi-loopback");
    EDataFlow flow = loopback ? eRender : eCapture;
    ERole role = loopback ? eConsole : eCommunications;

    hr = FUNC3(e, flow, role, &dev);
    FUNC4(e);
    if (FUNC1(hr))
    {
        FUNC7(demux, "cannot get default device (error 0x%lX)", hr);
        return NULL;
    }

    hr = FUNC5(dev, &IID_IAudioClient, CLSCTX_ALL, NULL, &pv);
    *loopbackp = FUNC2(dev) == eRender;
    FUNC6(dev);
    if (FUNC1(hr))
        FUNC7(demux, "cannot activate device (error 0x%lX)", hr);
    return pv;
}