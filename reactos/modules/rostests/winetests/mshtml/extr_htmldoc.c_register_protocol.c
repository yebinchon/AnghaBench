
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IInternetSession ;
typedef scalar_t__ HRESULT ;


 int ClassFactory ;
 scalar_t__ CoInternetGetSession (int ,int **,int ) ;
 int IID_NULL ;
 scalar_t__ IInternetSession_RegisterNameSpace (int *,int *,int *,char const*,int ,int *,int ) ;
 int IInternetSession_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void register_protocol(void)
{
    IInternetSession *session;
    HRESULT hres;

    static const WCHAR wsz_winetest[] = {'w','i','n','e','t','e','s','t',0};

    hres = CoInternetGetSession(0, &session, 0);
    ok(hres == S_OK, "CoInternetGetSession failed: %08x\n", hres);

    hres = IInternetSession_RegisterNameSpace(session, &ClassFactory, &IID_NULL,
            wsz_winetest, 0, ((void*)0), 0);
    ok(hres == S_OK, "RegisterNameSpace failed: %08x\n", hres);

    IInternetSession_Release(session);
}
