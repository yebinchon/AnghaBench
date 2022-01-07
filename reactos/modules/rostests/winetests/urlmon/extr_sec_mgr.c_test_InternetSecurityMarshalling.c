
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IStream ;
typedef int IInternetSecurityManager ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CoMarshalInterface (int *,int *,int *,int ,int *,int ) ;
 scalar_t__ CreateStreamOnHGlobal (int *,int ,int **) ;
 scalar_t__ FAILED (scalar_t__) ;
 int IID_IInternetSecurityManager ;
 int IID_IUnknown ;
 scalar_t__ IInternetSecurityManager_QueryInterface (int *,int *,void**) ;
 int IInternetSecurityManager_Release (int *) ;
 int IStream_Release (int *) ;
 int IUnknown_Release (int *) ;
 int MSHCTX_INPROC ;
 int MSHLFLAGS_NORMAL ;
 scalar_t__ REGDB_E_IIDNOTREG ;
 scalar_t__ S_OK ;
 int TRUE ;
 scalar_t__ broken (int) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pCoInternetCreateSecurityManager (int *,int **,int ) ;
 int trace (char*) ;

__attribute__((used)) static void test_InternetSecurityMarshalling(void)
{
    IInternetSecurityManager *secmgr = ((void*)0);
    IUnknown *unk;
    IStream *stream;
    HRESULT hres;

    trace("testing marshalling...\n");

    hres = pCoInternetCreateSecurityManager(((void*)0), &secmgr, 0);
    ok(hres == S_OK, "CoInternetCreateSecurityManager failed: %08x\n", hres);
    if(FAILED(hres))
        return;

    hres = IInternetSecurityManager_QueryInterface(secmgr, &IID_IUnknown, (void**)&unk);
    ok(hres == S_OK, "QueryInterface returned: %08x\n", hres);

    hres = CreateStreamOnHGlobal(((void*)0), TRUE, &stream);
    ok(hres == S_OK, "CreateStreamOnHGlobal returned: %08x\n", hres);

    hres = CoMarshalInterface(stream, &IID_IInternetSecurityManager, unk, MSHCTX_INPROC, ((void*)0), MSHLFLAGS_NORMAL);

    ok(hres == S_OK || broken(hres == REGDB_E_IIDNOTREG),
        "CoMarshalInterface returned: %08x\n", hres);

    IStream_Release(stream);
    IUnknown_Release(unk);
    IInternetSecurityManager_Release(secmgr);
}
