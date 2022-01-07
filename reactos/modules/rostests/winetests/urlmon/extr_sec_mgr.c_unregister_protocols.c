
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IInternetSession ;
typedef scalar_t__ HRESULT ;


 scalar_t__ FAILED (scalar_t__) ;
 int IInternetSession_Release (int *) ;
 scalar_t__ IInternetSession_UnregisterNameSpace (int *,int *,int ) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pCoInternetGetSession (int ,int **,int ) ;
 int protocol_cf ;
 int winetestW ;

__attribute__((used)) static void unregister_protocols(void) {
    IInternetSession *session;
    HRESULT hr;

    hr = pCoInternetGetSession(0, &session, 0);
    ok(hr == S_OK, "CoInternetGetSession failed: 0x%08x\n", hr);
    if(FAILED(hr))
        return;

    hr = IInternetSession_UnregisterNameSpace(session, &protocol_cf, winetestW);
    ok(hr == S_OK, "UnregisterNameSpace failed: 0x%08x\n", hr);

    IInternetSession_Release(session);
}
