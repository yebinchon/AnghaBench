
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IInternetProtocol ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef int BYTE ;


 scalar_t__ IInternetProtocol_LockRequest (int *,int ) ;
 scalar_t__ IInternetProtocol_Read (int *,int *,int,int *) ;
 scalar_t__ IInternetProtocol_Terminate (int *,int ) ;
 scalar_t__ IInternetProtocol_UnlockRequest (int *) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int Sleep (int) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ test_abort ;

__attribute__((used)) static void test_protocol_terminate(IInternetProtocol *protocol)
{
    BYTE buf[3600];
    DWORD cb;
    HRESULT hres;

    hres = IInternetProtocol_LockRequest(protocol, 0);
    ok(hres == S_OK, "LockRequest failed: %08x\n", hres);

    hres = IInternetProtocol_Read(protocol, buf, 1, &cb);
    ok(hres == (test_abort ? S_OK : S_FALSE), "Read failed: %08x\n", hres);

    hres = IInternetProtocol_Terminate(protocol, 0);
    ok(hres == S_OK, "Terminate failed: %08x\n", hres);
    Sleep(100);

    hres = IInternetProtocol_UnlockRequest(protocol);
    ok(hres == S_OK, "UnlockRequest failed: %08x\n", hres);
}
