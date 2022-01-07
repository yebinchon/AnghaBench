
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IHTMLDocument ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_HANDLER ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_XMLView ;
 scalar_t__ CoCreateInstance (int *,int *,int,int *,void**) ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IHTMLDocument_QueryInterface (int *,int *,void**) ;
 int IHTMLDocument_Release (int *) ;
 int IID_IHTMLDocument ;
 int IID_IOleCommandTarget ;
 int IID_IOleObject ;
 int IID_IPersistHistory ;
 int IID_IPersistMoniker ;
 int IID_IUnknown ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_QueryInterface(void)
{
    IUnknown *xmlview, *unk;
    IHTMLDocument *htmldoc;
    HRESULT hres;

    hres = CoCreateInstance(&CLSID_XMLView, ((void*)0), CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IUnknown, (void**)&xmlview);
    if(FAILED(hres)) {
        win_skip("Failed to create XMLView instance\n");
        return;
    }
    ok(hres == S_OK, "CoCreateInstance returned %x, expected S_OK\n", hres);

    hres = IUnknown_QueryInterface(xmlview, &IID_IPersistMoniker, (void**)&unk);
    ok(hres == S_OK, "QueryInterface(IID_IPersistMoniker) returned %x, expected S_OK\n", hres);
    IUnknown_Release(unk);

    hres = IUnknown_QueryInterface(xmlview, &IID_IPersistHistory, (void**)&unk);
    ok(hres == S_OK, "QueryInterface(IID_IPersistHistory) returned %x, expected S_OK\n", hres);
    IUnknown_Release(unk);

    hres = IUnknown_QueryInterface(xmlview, &IID_IOleCommandTarget, (void**)&unk);
    ok(hres == S_OK, "QueryInterface(IID_IOleCommandTarget) returned %x, expected S_OK\n", hres);
    IUnknown_Release(unk);

    hres = IUnknown_QueryInterface(xmlview, &IID_IOleObject, (void**)&unk);
    ok(hres == S_OK, "QueryInterface(IID_IOleObject) returned %x, expected S_OK\n", hres);
    IUnknown_Release(unk);

    hres = IUnknown_QueryInterface(xmlview, &IID_IHTMLDocument, (void**)&htmldoc);
    ok(hres == S_OK, "QueryInterface(IID_IHTMLDocument) returned %x, expected S_OK\n", hres);
    hres = IHTMLDocument_QueryInterface(htmldoc, &IID_IUnknown, (void**)&unk);
    ok(hres == S_OK, "QueryInterface(IID_IUnknown) returned %x, expected S_OK\n", hres);
    ok(unk == xmlview, "Aggregation is not working as expected\n");
    IUnknown_Release(unk);
    IHTMLDocument_Release(htmldoc);

    IUnknown_Release(xmlview);
}
