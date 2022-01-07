
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IInternetProtocol ;
typedef scalar_t__ HRESULT ;
typedef int CLSID ;


 int CLSCTX_INPROC_HANDLER ;
 int CLSCTX_INPROC_SERVER ;
 scalar_t__ CoCreateInstance (int const*,int *,int,int *,void**) ;
 int E_ABORT ;
 int E_FAIL ;
 int IID_IInternetProtocol ;
 scalar_t__ IInternetProtocol_Abort (int *,int ,int ) ;
 int IInternetProtocol_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_early_abort(const CLSID *clsid)
{
    IInternetProtocol *protocol;
    HRESULT hres;

    hres = CoCreateInstance(clsid, ((void*)0), CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IInternetProtocol, (void**)&protocol);
    ok(hres == S_OK, "CoCreateInstance failed: %08x\n", hres);

    hres = IInternetProtocol_Abort(protocol, E_ABORT, 0);
    ok(hres == S_OK, "Abort failed: %08x\n", hres);

    hres = IInternetProtocol_Abort(protocol, E_FAIL, 0);
    ok(hres == S_OK, "Abort failed: %08x\n", hres);

    IInternetProtocol_Release(protocol);
}
