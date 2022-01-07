
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IInternetSession ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ BOOL ;


 int IID_IInternetProtocol ;
 scalar_t__ IInternetSession_RegisterMimeFilter (int *,int *,int *,int ) ;
 int IInternetSession_Release (int *) ;
 scalar_t__ IInternetSession_UnregisterMimeFilter (int *,int *,int ) ;
 scalar_t__ S_OK ;
 int gifW ;
 int mimefilter_cf ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pCoInternetGetSession (int ,int **,int ) ;
 int pjpegW ;

__attribute__((used)) static void register_filter(BOOL do_register)
{
    IInternetSession *session;
    HRESULT hres;

    hres = pCoInternetGetSession(0, &session, 0);
    ok(hres == S_OK, "CoInternetGetSession failed: %08x\n", hres);

    if(do_register) {
        hres = IInternetSession_RegisterMimeFilter(session, &mimefilter_cf, &IID_IInternetProtocol, pjpegW);
        ok(hres == S_OK, "RegisterMimeFilter failed: %08x\n", hres);
        hres = IInternetSession_RegisterMimeFilter(session, &mimefilter_cf, &IID_IInternetProtocol, gifW);
        ok(hres == S_OK, "RegisterMimeFilter failed: %08x\n", hres);
    }else {
        hres = IInternetSession_UnregisterMimeFilter(session, &mimefilter_cf, pjpegW);
        ok(hres == S_OK, "RegisterMimeFilter failed: %08x\n", hres);
        hres = IInternetSession_UnregisterMimeFilter(session, &mimefilter_cf, gifW);
        ok(hres == S_OK, "RegisterMimeFilter failed: %08x\n", hres);
    }

    IInternetSession_Release(session);
}
