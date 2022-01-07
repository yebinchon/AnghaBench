
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IGlobalOptions ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_GlobalOptions ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 int CoInitialize (int *) ;
 int CoUninitialize () ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ E_NOINTERFACE ;
 scalar_t__ FAILED (scalar_t__) ;
 int IGlobalOptions_Release (int *) ;
 int IID_IGlobalOptions ;
 scalar_t__ S_OK ;
 scalar_t__ broken (int) ;
 int ok (int,char*,scalar_t__) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GlobalOptions(void)
{
    IGlobalOptions *global_options;
    HRESULT hres;

    CoInitialize(((void*)0));

    hres = CoCreateInstance(&CLSID_GlobalOptions, ((void*)0), CLSCTX_INPROC_SERVER,
            &IID_IGlobalOptions, (void**)&global_options);
    ok(hres == S_OK || broken(hres == E_NOINTERFACE), "CoCreateInstance(CLSID_GlobalOptions) failed: %08x\n", hres);
    if(FAILED(hres))
    {
        win_skip("CLSID_GlobalOptions not available\n");
        CoUninitialize();
        return;
    }

    IGlobalOptions_Release(global_options);

    hres = CoCreateInstance(&CLSID_GlobalOptions, (IUnknown*)0xdeadbeef, CLSCTX_INPROC_SERVER,
            &IID_IGlobalOptions, (void**)&global_options);
    ok(hres == E_INVALIDARG, "CoCreateInstance(CLSID_GlobalOptions) failed: %08x\n", hres);

    CoUninitialize();
}
