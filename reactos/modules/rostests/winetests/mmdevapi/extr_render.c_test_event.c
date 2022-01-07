
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WAVEFORMATEX ;
typedef int IAudioClient ;
typedef scalar_t__ HRESULT ;
typedef int * HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ AUDCLNT_E_EVENTHANDLE_NOT_SET ;
 int AUDCLNT_SHAREMODE_SHARED ;
 int AUDCLNT_STREAMFLAGS_EVENTCALLBACK ;
 int CLSCTX_INPROC_SERVER ;
 int CloseHandle (int *) ;
 int CoTaskMemFree (int *) ;
 int * CreateEventW (int *,int ,int ,int *) ;
 scalar_t__ D3D11_ERROR_4E ;
 int ERROR_INVALID_NAME ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ E_UNEXPECTED ;
 int FALSE ;
 scalar_t__ HRESULT_FROM_WIN32 (int ) ;
 scalar_t__ IAudioClient_GetMixFormat (int *,int **) ;
 scalar_t__ IAudioClient_Initialize (int *,int ,int ,int,int ,int *,int *) ;
 int IAudioClient_Release (int *) ;
 scalar_t__ IAudioClient_Reset (int *) ;
 scalar_t__ IAudioClient_SetEventHandle (int *,int *) ;
 scalar_t__ IAudioClient_Start (int *) ;
 scalar_t__ IAudioClient_Stop (int *) ;
 int IID_IAudioClient ;
 scalar_t__ IMMDevice_Activate (int ,int *,int ,int *,void**) ;
 int ResetEvent (int *) ;
 scalar_t__ S_OK ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WAIT_TIMEOUT ;
 scalar_t__ WaitForSingleObject (int *,int) ;
 int dev ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_event(void)
{
    HANDLE event;
    HRESULT hr;
    DWORD r;
    IAudioClient *ac;
    WAVEFORMATEX *pwfx;

    hr = IMMDevice_Activate(dev, &IID_IAudioClient, CLSCTX_INPROC_SERVER,
            ((void*)0), (void**)&ac);
    ok(hr == S_OK, "Activation failed with %08x\n", hr);
    if(hr != S_OK)
        return;

    hr = IAudioClient_GetMixFormat(ac, &pwfx);
    ok(hr == S_OK, "GetMixFormat failed: %08x\n", hr);

    hr = IAudioClient_Initialize(ac, AUDCLNT_SHAREMODE_SHARED,
            AUDCLNT_STREAMFLAGS_EVENTCALLBACK, 5000000,
            0, pwfx, ((void*)0));
    ok(hr == S_OK, "Initialize failed: %08x\n", hr);

    CoTaskMemFree(pwfx);

    event = CreateEventW(((void*)0), FALSE, FALSE, ((void*)0));
    ok(event != ((void*)0), "CreateEvent failed\n");

    hr = IAudioClient_Start(ac);
    ok(hr == AUDCLNT_E_EVENTHANDLE_NOT_SET ||
            hr == D3D11_ERROR_4E , "Start failed: %08x\n", hr);

    hr = IAudioClient_SetEventHandle(ac, event);
    ok(hr == S_OK, "SetEventHandle failed: %08x\n", hr);

    hr = IAudioClient_SetEventHandle(ac, event);
    ok(hr == HRESULT_FROM_WIN32(ERROR_INVALID_NAME) ||
            hr == E_UNEXPECTED , "SetEventHandle returns %08x\n", hr);

    r = WaitForSingleObject(event, 40);
    ok(r == WAIT_TIMEOUT, "Wait(event) before Start gave %x\n", r);

    hr = IAudioClient_Start(ac);
    ok(hr == S_OK, "Start failed: %08x\n", hr);

    r = WaitForSingleObject(event, 20);
    ok(r == WAIT_OBJECT_0, "Wait(event) after Start gave %x\n", r);

    hr = IAudioClient_Stop(ac);
    ok(hr == S_OK, "Stop failed: %08x\n", hr);

    ok(ResetEvent(event), "ResetEvent\n");


    r = WaitForSingleObject(event, 20);
    ok(r == WAIT_OBJECT_0, "Wait(event) after Stop gave %x\n", r);

    hr = IAudioClient_Reset(ac);
    ok(hr == S_OK, "Reset failed: %08x\n", hr);

    ok(ResetEvent(event), "ResetEvent\n");

    r = WaitForSingleObject(event, 120);
    ok(r == WAIT_OBJECT_0, "Wait(event) after Reset gave %x\n", r);

    hr = IAudioClient_SetEventHandle(ac, ((void*)0));
    ok(hr == E_INVALIDARG, "SetEventHandle(NULL) returns %08x\n", hr);

    r = WaitForSingleObject(event, 70);
    ok(r == WAIT_OBJECT_0, "Wait(NULL event) gave %x\n", r);


    hr = IAudioClient_Start(ac);
    ok(hr == S_OK, "Start failed: %08x\n", hr);
    IAudioClient_Release(ac);

    CloseHandle(event);
}
