
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IStillImageW ;
typedef int HRESULT ;


 int E_ACCESSDENIED ;
 int GetModuleHandleA (int *) ;
 int IStillImage_RegisterLaunchApplication (int *,char*,char*) ;
 int IStillImage_Release (int *) ;
 int IStillImage_UnregisterLaunchApplication (int *,char*) ;
 int STI_VERSION_FLAG_UNICODE ;
 int STI_VERSION_REAL ;
 scalar_t__ SUCCEEDED (int ) ;
 int ok (scalar_t__,char*,int ) ;
 int pStiCreateInstance (int ,int,int **,int *) ;
 int * pStiCreateInstanceW ;
 int skip (char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_launch_app_registry(void)
{
    static WCHAR appName[] = {'w','i','n','e','s','t','i','t','e','s','t','a','p','p',0};
    IStillImageW *pStiW = ((void*)0);
    HRESULT hr;

    if (pStiCreateInstanceW == ((void*)0))
    {
        win_skip("No StiCreateInstanceW function\n");
        return;
    }

    hr = pStiCreateInstance(GetModuleHandleA(((void*)0)), STI_VERSION_REAL | STI_VERSION_FLAG_UNICODE, &pStiW, ((void*)0));
    if (SUCCEEDED(hr))
    {
        hr = IStillImage_RegisterLaunchApplication(pStiW, appName, appName);
        if (hr == E_ACCESSDENIED)
            skip("Not authorized to register a launch application\n");
        else if (SUCCEEDED(hr))
        {
            hr = IStillImage_UnregisterLaunchApplication(pStiW, appName);
            ok(SUCCEEDED(hr), "could not unregister launch application, error 0x%X\n", hr);
        }
        else
            ok(0, "could not register launch application, error 0x%X\n", hr);
        IStillImage_Release(pStiW);
    }
    else
        ok(0, "could not create StillImageW, hr = 0x%X\n", hr);
}
