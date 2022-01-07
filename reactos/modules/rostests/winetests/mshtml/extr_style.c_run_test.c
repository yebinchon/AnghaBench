
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* style_test_t ) (int *) ;
typedef int ULONG ;
typedef int MSG ;
typedef int IUnknown ;
typedef int IHTMLDocument2 ;


 int DispatchMessageW (int *) ;
 scalar_t__ GetMessageW (int *,int *,int ,int ) ;
 int IHTMLDocument2_Release (int *) ;
 int IID_IPropertyNotifySink ;
 int PropertyNotifySink ;
 int TranslateMessage (int *) ;
 scalar_t__ broken (int) ;
 int * create_doc_with_string (char const*) ;
 int do_advise (int *,int *,int *) ;
 int doc_complete ;
 int ok (int,char*,int) ;

__attribute__((used)) static void run_test(const char *str, style_test_t test)
{
    IHTMLDocument2 *doc;
    ULONG ref;
    MSG msg;

    doc = create_doc_with_string(str);
    if(!doc)
        return;

    do_advise((IUnknown*)doc, &IID_IPropertyNotifySink, (IUnknown*)&PropertyNotifySink);

    while(!doc_complete && GetMessageW(&msg, ((void*)0), 0, 0)) {
        TranslateMessage(&msg);
        DispatchMessageW(&msg);
    }

    test(doc);

    ref = IHTMLDocument2_Release(doc);
    ok(!ref || broken(ref == 1),
       "ref = %d\n", ref);
}
