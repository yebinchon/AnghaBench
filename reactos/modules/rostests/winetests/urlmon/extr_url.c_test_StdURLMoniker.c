
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPOLESTR ;
typedef int IUriContainer ;
typedef int IUri ;
typedef int IUnknown ;
typedef int IMoniker ;
typedef int IBindStatusCallback ;
typedef int IBindCtx ;
typedef int * HRESULT ;


 int CHECK_CALLED (int ) ;
 int CLSCTX_INPROC_HANDLER ;
 int CLSCTX_INPROC_SERVER ;
 int * CoCreateInstance (int *,int *,int,int *,void**) ;
 int * CreateAsyncBindCtx (int ,int *,int *,int **) ;
 int * E_OUTOFMEMORY ;
 scalar_t__ FAILED (int *) ;
 int IID_IAsyncMoniker ;
 int IID_IInternet ;
 int IID_IMoniker ;
 int IID_IStream ;
 int IID_IUnknown ;
 int IID_IUriContainer ;
 int * IMoniker_BindToObject (int *,int *,int *,int *,void**) ;
 int * IMoniker_BindToStorage (int *,int *,int *,int *,void**) ;
 int * IMoniker_GetDisplayName (int *,int *,int *,int *) ;
 int * IMoniker_QueryInterface (int *,int *,void**) ;
 int IMoniker_Release (int *) ;
 int * IUriContainer_GetIUri (int *,int **) ;
 int IUriContainer_Release (int *) ;
 int * MK_E_SYNTAX ;
 int QueryInterface_IServiceProvider ;
 int SET_EXPECT (int ) ;
 int * S_FALSE ;
 int * S_OK ;
 int bsc ;
 int ok (int,char*,...) ;
 scalar_t__ pCreateUri ;

__attribute__((used)) static void test_StdURLMoniker(void)
{
    IMoniker *mon, *async_mon;
    LPOLESTR display_name;
    IBindCtx *bctx;
    IUnknown *unk;
    HRESULT hres;

    hres = CoCreateInstance(&IID_IInternet, ((void*)0), CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IMoniker, (void**)&mon);
    ok(hres == S_OK, "Could not create IInternet instance: %08x\n", hres);
    if(FAILED(hres))
        return;

    hres = IMoniker_QueryInterface(mon, &IID_IAsyncMoniker, (void**)&async_mon);
    ok(hres == S_OK, "Could not get IAsyncMoniker iface: %08x\n", hres);
    ok(mon == async_mon, "mon != async_mon\n");
    IMoniker_Release(async_mon);

    hres = IMoniker_GetDisplayName(mon, ((void*)0), ((void*)0), &display_name);
    ok(hres == E_OUTOFMEMORY, "GetDisplayName failed: %08x, expected E_OUTOFMEMORY\n", hres);

    if(pCreateUri) {
      IUriContainer *uri_container;
      IUri *uri;

      hres = IMoniker_QueryInterface(mon, &IID_IUriContainer, (void**)&uri_container);
      ok(hres == S_OK, "Could not get IUriMoniker iface: %08x\n", hres);


      uri = (void*)0xdeadbeef;
      hres = IUriContainer_GetIUri(uri_container, &uri);
      ok(hres == S_FALSE, "GetIUri failed: %08x\n", hres);
      ok(!uri, "uri = %p, expected NULL\n", uri);

      IUriContainer_Release(uri_container);
    }

    SET_EXPECT(QueryInterface_IServiceProvider);
    hres = CreateAsyncBindCtx(0, (IBindStatusCallback*)&bsc, ((void*)0), &bctx);
    ok(hres == S_OK, "CreateAsyncBindCtx failed: %08x\n\n", hres);
    CHECK_CALLED(QueryInterface_IServiceProvider);

    if(pCreateUri) {
        unk = (void*)0xdeadbeef;
        hres = IMoniker_BindToStorage(mon, bctx, ((void*)0), &IID_IStream, (void**)&unk);
        ok(hres == MK_E_SYNTAX, "BindToStorage failed: %08x, expected MK_E_SYNTAX\n", hres);
        ok(!unk, "unk = %p\n", unk);

        unk = (void*)0xdeadbeef;
        hres = IMoniker_BindToObject(mon, bctx, ((void*)0), &IID_IUnknown, (void**)&unk);
        ok(hres == MK_E_SYNTAX, "BindToStorage failed: %08x, expected MK_E_SYNTAX\n", hres);
        ok(!unk, "unk = %p\n", unk);
    }

    IMoniker_Release(mon);
}
