
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IServiceProvider ;
typedef int IHTMLDocument3 ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IHTMLDocument2_Release (int *) ;
 int IHTMLDocument3_Release (int *) ;
 int IID_IHTMLDocument2 ;
 int IID_IHTMLDocument3 ;
 int IID_IHTMLEditServices ;
 int IID_IServiceProvider ;
 int IID_IUnknown ;
 scalar_t__ IServiceProvider_QueryService (int *,int *,int *,void**) ;
 int IServiceProvider_Release (int *) ;
 int IUnknown_Release (int *) ;
 int SID_SContainerDispatch ;
 int SID_SHTMLEditServices ;
 scalar_t__ S_OK ;
 int * create_document () ;
 int iface_cmp (int *,int *) ;
 int ok (int,char*,...) ;
 int release_document (int *) ;

__attribute__((used)) static void test_ServiceProvider(void)
{
    IHTMLDocument3 *doc3, *doc3_2;
    IServiceProvider *provider;
    IHTMLDocument2 *doc, *doc2;
    IUnknown *unk;
    HRESULT hres;

    doc = create_document();
    if(!doc)
        return;

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IServiceProvider, (void**)&provider);
    ok(hres == S_OK, "got 0x%08x\n", hres);

    hres = IServiceProvider_QueryService(provider, &SID_SContainerDispatch, &IID_IHTMLDocument2, (void**)&doc2);
    ok(hres == S_OK, "got 0x%08x\n", hres);
    ok(iface_cmp((IUnknown*)doc2, (IUnknown*)doc), "got wrong pointer\n");
    IHTMLDocument2_Release(doc2);

    hres = IServiceProvider_QueryService(provider, &SID_SContainerDispatch, &IID_IHTMLDocument3, (void**)&doc3);
    ok(hres == S_OK, "got 0x%08x\n", hres);
    ok(iface_cmp((IUnknown*)doc3, (IUnknown*)doc), "got wrong pointer\n");

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IHTMLDocument3, (void**)&doc3_2);
    ok(hres == S_OK, "got 0x%08x\n", hres);
    ok(iface_cmp((IUnknown*)doc3_2, (IUnknown*)doc), "got wrong pointer\n");
    ok(iface_cmp((IUnknown*)doc3_2, (IUnknown*)doc3), "got wrong pointer\n");
    IHTMLDocument3_Release(doc3);
    IHTMLDocument3_Release(doc3_2);

    hres = IServiceProvider_QueryService(provider, &SID_SContainerDispatch, &IID_IUnknown, (void**)&unk);
    ok(hres == S_OK, "got 0x%08x\n", hres);
    ok(iface_cmp((IUnknown*)doc, unk), "got wrong pointer\n");
    IUnknown_Release(unk);

    hres = IServiceProvider_QueryService(provider, &SID_SHTMLEditServices, &IID_IHTMLEditServices, (void**)&unk);
    ok(hres == S_OK, "QueryService(HTMLEditServices) failed: %08x\n", hres);
    IUnknown_Release(unk);

    IServiceProvider_Release(provider);
    release_document(doc);
}
