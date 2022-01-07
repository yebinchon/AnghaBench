
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IOleObject ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ BOOL ;


 int CHECK_CALLED (int ) ;
 int CLIENTSITE_DONTSET ;
 int CLIENTSITE_SETNULL ;
 scalar_t__ FAILED (scalar_t__) ;
 void* FALSE ;
 int GetContainer ;
 scalar_t__ IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IID_IOleObject ;
 scalar_t__ IOleObject_Close (int *,int ) ;
 int IOleObject_Release (int *) ;
 int LockContainer ;
 int OLECLOSE_NOSAVE ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 void* container_locked ;
 void* expect_LockContainer_fLock ;
 int ok (int,char*,scalar_t__) ;
 int test_ClientSite (int *,int) ;

__attribute__((used)) static void test_Close(IHTMLDocument2 *doc, BOOL set_client)
{
    IOleObject *oleobj = ((void*)0);
    HRESULT hres;

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IOleObject, (void**)&oleobj);
    ok(hres == S_OK, "QueryInterface(IID_IOleObject) failed: %08x\n", hres);
    if(FAILED(hres))
        return;

    SET_EXPECT(GetContainer);
    SET_EXPECT(LockContainer);
    expect_LockContainer_fLock = FALSE;
    hres = IOleObject_Close(oleobj, OLECLOSE_NOSAVE);
    ok(hres == S_OK, "Close failed: %08x\n", hres);
    CHECK_CALLED(GetContainer);
    CHECK_CALLED(LockContainer);
    container_locked = FALSE;

    if(set_client)
        test_ClientSite(oleobj, CLIENTSITE_SETNULL|CLIENTSITE_DONTSET);

    IOleObject_Release(oleobj);
}
