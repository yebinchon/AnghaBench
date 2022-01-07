
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int REFERENCE_TIME ;
typedef int IUnknown ;
typedef int IAudioClient ;
typedef scalar_t__ HRESULT ;
typedef int HANDLE ;


 scalar_t__ AUDCLNT_E_NOT_INITIALIZED ;
 int CloseHandle (int ) ;
 int CreateEventW (int *,int ,int ,int *) ;
 int FALSE ;
 scalar_t__ IAudioClient_GetBufferSize (int *,int *) ;
 scalar_t__ IAudioClient_GetCurrentPadding (int *,int *) ;
 scalar_t__ IAudioClient_GetService (int *,int *,void**) ;
 scalar_t__ IAudioClient_GetStreamLatency (int *,int *) ;
 scalar_t__ IAudioClient_Reset (int *) ;
 scalar_t__ IAudioClient_SetEventHandle (int *,int ) ;
 scalar_t__ IAudioClient_Start (int *) ;
 scalar_t__ IAudioClient_Stop (int *) ;
 int IID_IAudioStreamVolume ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_uninitialized(IAudioClient *ac)
{
    HRESULT hr;
    UINT32 num;
    REFERENCE_TIME t1;

    HANDLE handle = CreateEventW(((void*)0), FALSE, FALSE, ((void*)0));
    IUnknown *unk;

    hr = IAudioClient_GetBufferSize(ac, &num);
    ok(hr == AUDCLNT_E_NOT_INITIALIZED, "Uninitialized GetBufferSize call returns %08x\n", hr);

    hr = IAudioClient_GetStreamLatency(ac, &t1);
    ok(hr == AUDCLNT_E_NOT_INITIALIZED, "Uninitialized GetStreamLatency call returns %08x\n", hr);

    hr = IAudioClient_GetCurrentPadding(ac, &num);
    ok(hr == AUDCLNT_E_NOT_INITIALIZED, "Uninitialized GetCurrentPadding call returns %08x\n", hr);

    hr = IAudioClient_Start(ac);
    ok(hr == AUDCLNT_E_NOT_INITIALIZED, "Uninitialized Start call returns %08x\n", hr);

    hr = IAudioClient_Stop(ac);
    ok(hr == AUDCLNT_E_NOT_INITIALIZED, "Uninitialized Stop call returns %08x\n", hr);

    hr = IAudioClient_Reset(ac);
    ok(hr == AUDCLNT_E_NOT_INITIALIZED, "Uninitialized Reset call returns %08x\n", hr);

    hr = IAudioClient_SetEventHandle(ac, handle);
    ok(hr == AUDCLNT_E_NOT_INITIALIZED, "Uninitialized SetEventHandle call returns %08x\n", hr);

    hr = IAudioClient_GetService(ac, &IID_IAudioStreamVolume, (void**)&unk);
    ok(hr == AUDCLNT_E_NOT_INITIALIZED, "Uninitialized GetService call returns %08x\n", hr);

    CloseHandle(handle);
}
