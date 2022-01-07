
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char OLECHAR ;
typedef int MSG ;
typedef int IUnknown ;
typedef int IHTMLElement ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DISPID ;


 scalar_t__ DISPID_IHTMLBODYELEMENT_BACKGROUND ;
 int DispatchMessageW (int *) ;
 scalar_t__ GetMessageW (int *,int *,int ,int ) ;
 scalar_t__ IHTMLDocument2_get_body (int *,int **) ;
 scalar_t__ IHTMLElement_GetIDsOfNames (int *,int *,char**,int,int ,scalar_t__*) ;
 int IHTMLElement_Release (int *) ;
 int IID_IPropertyNotifySink ;
 int IID_NULL ;
 int LOCALE_USER_DEFAULT ;
 int PropertyNotifySink ;
 scalar_t__ S_OK ;
 int TranslateMessage (int *) ;
 int do_advise (int *,int *,int *) ;
 int doc_complete ;
 int load_string (int *,char const*) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void load_doc(IHTMLDocument2 *doc, const char *str)
{
    IHTMLElement *body = ((void*)0);
    MSG msg;
    HRESULT hres;
    static const WCHAR ucPtr[] = {'b','a','c','k','g','r','o','u','n','d',0};
    DISPID dispID = -1;
    OLECHAR *name;

    load_string(doc, str);
    do_advise(doc, &IID_IPropertyNotifySink, (IUnknown*)&PropertyNotifySink);

    while(!doc_complete && GetMessageW(&msg, ((void*)0), 0, 0)) {
        TranslateMessage(&msg);
        DispatchMessageW(&msg);
    }

    hres = IHTMLDocument2_get_body(doc, &body);
    ok(hres == S_OK, "get_body failed: %08x\n", hres);


    name = (WCHAR*)ucPtr;
    hres = IHTMLElement_GetIDsOfNames(body, &IID_NULL, &name, 1, LOCALE_USER_DEFAULT, &dispID);
    ok(hres == S_OK, "GetIDsOfNames(background) failed %08x\n", hres);
    ok(dispID == DISPID_IHTMLBODYELEMENT_BACKGROUND, "Incorrect dispID got (%d)\n", dispID);

    IHTMLElement_Release(body);
}
