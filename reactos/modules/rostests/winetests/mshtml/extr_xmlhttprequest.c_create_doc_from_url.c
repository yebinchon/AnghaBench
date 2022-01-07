
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IPersistMoniker ;
typedef int IMoniker ;
typedef int IHTMLDocument2 ;
typedef int IBindCtx ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 int CLSCTX_INPROC_HANDLER ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_HTMLDocument ;
 scalar_t__ CoCreateInstance (int *,int *,int,int *,void**) ;
 scalar_t__ CreateBindCtx (int ,int **) ;
 scalar_t__ CreateURLMoniker (int *,int ,int **) ;
 int FALSE ;
 int IBindCtx_Release (int *) ;
 scalar_t__ IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IID_IHTMLDocument2 ;
 int IID_IPersistMoniker ;
 int IID_IPropertyNotifySink ;
 int IMoniker_Release (int *) ;
 scalar_t__ IPersistMoniker_Load (int *,int ,int *,int *,int) ;
 int IPersistMoniker_Release (int *) ;
 int PropertyNotifySink ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int a2bstr (char const*) ;
 int do_advise (int *,int *,int *) ;
 int doc_complete ;
 int * notif_doc ;
 int ok (int,char*,scalar_t__) ;
 int pump_msgs (int *) ;

__attribute__((used)) static IHTMLDocument2 *create_doc_from_url(const char *start_url)
{
    BSTR url;
    IBindCtx *bc;
    IMoniker *url_mon;
    IPersistMoniker *persist_mon;
    IHTMLDocument2 *doc;
    HRESULT hres;

    hres = CreateBindCtx(0, &bc);
    ok(hres == S_OK, "CreateBindCtx failed: 0x%08x\n", hres);

    url = a2bstr(start_url);
    hres = CreateURLMoniker(((void*)0), url, &url_mon);
    ok(hres == S_OK, "CreateURLMoniker failed: 0x%08x\n", hres);

    hres = CoCreateInstance(&CLSID_HTMLDocument, ((void*)0),
            CLSCTX_INPROC_SERVER | CLSCTX_INPROC_HANDLER, &IID_IHTMLDocument2,
            (void**)&doc);
    ok(hres == S_OK, "CoCreateInstance failed: 0x%08x\n", hres);

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IPersistMoniker,
            (void**)&persist_mon);
    ok(hres == S_OK, "IHTMLDocument2_QueryInterface failed: 0x%08x\n", hres);

    hres = IPersistMoniker_Load(persist_mon, FALSE, url_mon, bc,
            STGM_SHARE_EXCLUSIVE | STGM_READWRITE);
    ok(hres == S_OK, "IPersistMoniker_Load failed: 0x%08x\n", hres);

    IPersistMoniker_Release(persist_mon);
    IMoniker_Release(url_mon);
    IBindCtx_Release(bc);
    SysFreeString(url);

    doc_complete = FALSE;
    notif_doc = doc;
    do_advise((IUnknown*)doc, &IID_IPropertyNotifySink, (IUnknown*)&PropertyNotifySink);
    pump_msgs(&doc_complete);

    return doc;
}
