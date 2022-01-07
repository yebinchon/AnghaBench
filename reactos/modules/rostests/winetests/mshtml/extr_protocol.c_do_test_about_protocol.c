
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int test_html ;
typedef int buf ;
typedef int blank_html ;
typedef int WCHAR ;
typedef int ULONG ;
typedef int IInternetProtocol ;
typedef int IInternetPriority ;
typedef int IClassFactory ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BYTE ;


 int E_NOINTERFACE ;
 scalar_t__ FAILED (int) ;
 int IClassFactory_CreateInstance (int *,int *,int *,void**) ;
 int IID_IInternetPriority ;
 int IID_IInternetProtocol ;
 int IInternetProtocol_LockRequest (int *,int ) ;
 int IInternetProtocol_QueryInterface (int *,int *,void**) ;
 int IInternetProtocol_Read (int *,int *,int,int*) ;
 int IInternetProtocol_Release (int *) ;
 int IInternetProtocol_UnlockRequest (int *) ;
 int S_OK ;
 int about_blank_url ;
 int about_res_url ;
 int about_test_url ;
 int bindf ;
 int memcmp (int *,int const*,int) ;
 int ok (int,char*,...) ;
 int protocol_start (int *,int ) ;

__attribute__((used)) static void do_test_about_protocol(IClassFactory *factory, DWORD bf)
{
    IInternetProtocol *protocol;
    IInternetPriority *priority;
    BYTE buf[512];
    ULONG cb;
    HRESULT hres;

    static const WCHAR blank_html[] = {0xfeff,'<','H','T','M','L','>','<','/','H','T','M','L','>',0};
    static const WCHAR test_html[] =
        {0xfeff,'<','H','T','M','L','>','t','e','s','t','<','/','H','T','M','L','>',0};

    bindf = bf;

    hres = IClassFactory_CreateInstance(factory, ((void*)0), &IID_IInternetProtocol, (void**)&protocol);
    ok(hres == S_OK, "Could not get IInternetProtocol: %08x\n", hres);
    if(FAILED(hres))
        return;

    hres = IInternetProtocol_QueryInterface(protocol, &IID_IInternetPriority, (void**)&priority);
    ok(hres == E_NOINTERFACE,
       "QueryInterface(IInternetPriority) returned %08x, expected E_NOINTEFACE\n", hres);

    protocol_start(protocol, about_blank_url);
    hres = IInternetProtocol_LockRequest(protocol, 0);
    ok(hres == S_OK, "LockRequest failed: %08x\n", hres);
    hres = IInternetProtocol_Read(protocol, buf, sizeof(buf), &cb);
    ok(hres == S_OK, "Read failed: %08x\n", hres);
    ok(cb == sizeof(blank_html), "cb=%d\n", cb);
    ok(!memcmp(buf, blank_html, cb), "Readed wrong data\n");
    hres = IInternetProtocol_UnlockRequest(protocol);
    ok(hres == S_OK, "UnlockRequest failed: %08x\n", hres);

    protocol_start(protocol, about_test_url);
    hres = IInternetProtocol_LockRequest(protocol, 0);
    ok(hres == S_OK, "LockRequest failed: %08x\n", hres);
    hres = IInternetProtocol_Read(protocol, buf, sizeof(buf), &cb);
    ok(hres == S_OK, "Read failed: %08x\n", hres);
    ok(cb == sizeof(test_html), "cb=%d\n", cb);
    ok(!memcmp(buf, test_html, cb), "Readed wrong data\n");
    hres = IInternetProtocol_UnlockRequest(protocol);
    ok(hres == S_OK, "UnlockRequest failed: %08x\n", hres);

    protocol_start(protocol, about_res_url);
    hres = IInternetProtocol_LockRequest(protocol, 0);
    ok(hres == S_OK, "LockRequest failed: %08x\n", hres);
    hres = IInternetProtocol_Read(protocol, buf, sizeof(buf), &cb);
    ok(hres == S_OK, "Read failed: %08x\n", hres);
    ok(cb == sizeof(blank_html), "cb=%d\n", cb);
    ok(!memcmp(buf, blank_html, cb), "Readed wrong data\n");
    hres = IInternetProtocol_UnlockRequest(protocol);
    ok(hres == S_OK, "UnlockRequest failed: %08x\n", hres);

    IInternetProtocol_Release(protocol);
}
