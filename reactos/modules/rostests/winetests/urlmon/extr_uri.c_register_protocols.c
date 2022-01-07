
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IInternetSession ;
typedef scalar_t__ HRESULT ;


 scalar_t__ FAILED (scalar_t__) ;
 int IID_NULL ;
 scalar_t__ IInternetSession_RegisterNameSpace (int *,int *,int *,int ,int ,int *,int ) ;
 int IInternetSession_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pCoInternetGetSession (int ,int **,int ) ;
 int protocol_cf ;
 int winetestW ;

__attribute__((used)) static void register_protocols(void)
{
    IInternetSession *session;
    HRESULT hres;

    hres = pCoInternetGetSession(0, &session, 0);
    ok(hres == S_OK, "CoInternetGetSession failed: %08x\n", hres);
    if(FAILED(hres))
        return;

    hres = IInternetSession_RegisterNameSpace(session, &protocol_cf, &IID_NULL,
            winetestW, 0, ((void*)0), 0);
    ok(hres == S_OK, "RegisterNameSpace failed: %08x\n", hres);

    IInternetSession_Release(session);
}
