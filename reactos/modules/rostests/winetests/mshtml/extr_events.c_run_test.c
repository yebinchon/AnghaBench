
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* testfunc_t ) (int *) ;
typedef int MSG ;
typedef int IUnknown ;
typedef int IHTMLElement ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;


 int DispatchMessageA (int *) ;
 int FALSE ;
 scalar_t__ GetMessageA (int *,int *,int ,int ) ;
 int IHTMLDocument2_Release (int *) ;
 scalar_t__ IHTMLDocument2_get_body (int *,int **) ;
 scalar_t__ IHTMLDocument2_get_parentWindow (int *,int **) ;
 int IHTMLElement_Release (int *) ;
 int IHTMLWindow2_Release (int *) ;
 int IID_IPropertyNotifySink ;
 int PropertyNotifySink ;
 scalar_t__ S_OK ;
 int TRUE ;
 int TranslateMessage (int *) ;
 int * create_document () ;
 int do_advise (int *,int *,int *) ;
 int doc_complete ;
 int doc_load_string (int *,char const*) ;
 int ok (int,char*,...) ;
 int set_client_site (int *,int ) ;
 int skip (char*) ;
 int * window ;

__attribute__((used)) static void run_test(const char *str, testfunc_t test)
{
    IHTMLDocument2 *doc;
    IHTMLElement *body = ((void*)0);
    MSG msg;
    HRESULT hres;

    doc = create_document();
    if (!doc)
        return;
    set_client_site(doc, TRUE);
    doc_load_string(doc, str);
    do_advise((IUnknown*)doc, &IID_IPropertyNotifySink, (IUnknown*)&PropertyNotifySink);

    while(!doc_complete && GetMessageA(&msg, ((void*)0), 0, 0)) {
        TranslateMessage(&msg);
        DispatchMessageA(&msg);
    }

    hres = IHTMLDocument2_get_body(doc, &body);
    ok(hres == S_OK, "get_body failed: %08x\n", hres);

    if(body) {
        IHTMLElement_Release(body);

        hres = IHTMLDocument2_get_parentWindow(doc, &window);
        ok(hres == S_OK, "get_parentWindow failed: %08x\n", hres);
        ok(window != ((void*)0), "window == NULL\n");

        test(doc);

        IHTMLWindow2_Release(window);
        window = ((void*)0);
    }else {
        skip("Could not get document body. Assuming no Gecko installed.\n");
    }

    set_client_site(doc, FALSE);
    IHTMLDocument2_Release(doc);
}
