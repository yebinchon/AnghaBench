
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int IInternetProtocol ;
typedef int IInternetPriority ;
typedef scalar_t__ HRESULT ;


 scalar_t__ FAILED (scalar_t__) ;
 int IID_IInternetPriority ;
 scalar_t__ IInternetPriority_GetPriority (int *,int*) ;
 int IInternetPriority_Release (int *) ;
 scalar_t__ IInternetPriority_SetPriority (int *,int) ;
 scalar_t__ IInternetProtocol_QueryInterface (int *,int *,void**) ;
 scalar_t__ S_OK ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_priority(IInternetProtocol *protocol)
{
    IInternetPriority *priority;
    LONG pr;
    HRESULT hres;

    hres = IInternetProtocol_QueryInterface(protocol, &IID_IInternetPriority,
                                            (void**)&priority);
    ok(hres == S_OK, "QueryInterface(IID_IInternetPriority) failed: %08x\n", hres);
    if(FAILED(hres))
        return;

    hres = IInternetPriority_GetPriority(priority, &pr);
    ok(hres == S_OK, "GetPriority failed: %08x\n", hres);
    ok(pr == 0, "pr=%d, expected 0\n", pr);

    hres = IInternetPriority_SetPriority(priority, 1);
    ok(hres == S_OK, "SetPriority failed: %08x\n", hres);

    hres = IInternetPriority_GetPriority(priority, &pr);
    ok(hres == S_OK, "GetPriority failed: %08x\n", hres);
    ok(pr == 1, "pr=%d, expected 1\n", pr);

    IInternetPriority_Release(priority);
}
