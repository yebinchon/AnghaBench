
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLDocument7 ;
typedef int IHTMLDocument5 ;
typedef int IHTMLDocument2 ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IHTMLDocument5_Release (int *) ;
 int IHTMLDocument7_Release (int *) ;
 int IID_IHTMLDocument5 ;
 int IID_IHTMLDocument7 ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRUE ;
 int * create_document () ;
 int is_ie9plus ;
 int release_document (int *) ;
 int trace (char*,int ) ;

__attribute__((used)) static BOOL check_ie(void)
{
    IHTMLDocument2 *doc;
    IHTMLDocument5 *doc5;
    IHTMLDocument7 *doc7;
    HRESULT hres;

    doc = create_document();
    if(!doc)
        return FALSE;

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IHTMLDocument7, (void**)&doc7);
    if(SUCCEEDED(hres)) {
        is_ie9plus = TRUE;
        IHTMLDocument7_Release(doc7);
    }

    trace("is_ie9plus %x\n", is_ie9plus);

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IHTMLDocument5, (void**)&doc5);
    if(SUCCEEDED(hres))
        IHTMLDocument5_Release(doc5);

    release_document(doc);
    return SUCCEEDED(hres);
}
