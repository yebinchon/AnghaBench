
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IClassFactory ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_MkProtocol ;
 scalar_t__ CoGetClassObject (int *,int ,int *,int *,void**) ;
 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 int IClassFactory_Release (int *) ;
 int IID_IClassFactory ;
 int MK_PROTOCOL ;
 scalar_t__ REGDB_E_CLASSNOTREG ;
 scalar_t__ S_OK ;
 int TRUE ;
 int blank_url3 ;
 int blank_url7 ;
 int blank_url8 ;
 scalar_t__ broken (int) ;
 int cache_file ;
 int cache_file1 ;
 int cache_file2 ;
 int cache_file3 ;
 int ok (int,char*,scalar_t__) ;
 int test_protocol ;
 int test_protocol_url (int *,int ,int ) ;

__attribute__((used)) static void test_mk_protocol(void)
{
    IClassFactory *cf;
    HRESULT hres;

    test_protocol = MK_PROTOCOL;

    hres = CoGetClassObject(&CLSID_MkProtocol, CLSCTX_INPROC_SERVER, ((void*)0), &IID_IClassFactory,
                            (void**)&cf);
    ok(hres == S_OK ||
       broken(hres == REGDB_E_CLASSNOTREG),
       "CoGetClassObject failed: %08x\n", hres);
    if(FAILED(hres))
        return;

    cache_file = cache_file1;
    test_protocol_url(cf, blank_url3, TRUE);
    cache_file = cache_file2;
    test_protocol_url(cf, blank_url7, TRUE);
    cache_file = cache_file3;
    test_protocol_url(cf, blank_url8, FALSE);

    IClassFactory_Release(cf);
}
