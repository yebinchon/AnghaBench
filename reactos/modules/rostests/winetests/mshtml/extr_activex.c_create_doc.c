
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MSG ;
typedef int IUnknown ;
typedef int IHTMLDocument2 ;


 int DispatchMessageW (int *) ;
 scalar_t__ GetMessageW (int *,int *,int ,int ) ;
 int IID_IPropertyNotifySink ;
 int PropertyNotifySink ;
 int TRUE ;
 int TranslateMessage (int *) ;
 int * create_document () ;
 int do_advise (int *,int *,int *) ;
 int doc_complete ;
 int doc_load_string (int *,char const*) ;
 int set_client_site (int *,int ) ;

__attribute__((used)) static IHTMLDocument2 *create_doc(const char *str)
{
    IHTMLDocument2 *doc;
    MSG msg;

    doc = create_document();
    set_client_site(doc, TRUE);
    doc_load_string(doc, str);
    do_advise((IUnknown*)doc, &IID_IPropertyNotifySink, (IUnknown*)&PropertyNotifySink);

    while(!doc_complete && GetMessageW(&msg, ((void*)0), 0, 0)) {
        TranslateMessage(&msg);
        DispatchMessageW(&msg);
    }

    return doc;
}
