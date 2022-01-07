
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLTxtRange ;
typedef int IHTMLElement ;
typedef int IHTMLDocument2 ;
typedef int IHTMLBodyElement ;
typedef scalar_t__ HRESULT ;


 int IHTMLBodyElement_Release (int *) ;
 scalar_t__ IHTMLBodyElement_createTextRange (int *,int **) ;
 scalar_t__ IHTMLElement_QueryInterface (int *,int *,void**) ;
 int IHTMLElement_Release (int *) ;
 int IID_IHTMLBodyElement ;
 scalar_t__ S_OK ;
 int * doc_get_body (int *) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static IHTMLTxtRange *test_create_body_range(IHTMLDocument2 *doc)
{
    IHTMLBodyElement *body;
    IHTMLTxtRange *range;
    IHTMLElement *elem;
    HRESULT hres;

    elem = doc_get_body(doc);
    hres = IHTMLElement_QueryInterface(elem, &IID_IHTMLBodyElement, (void**)&body);
    ok(hres == S_OK, "QueryInterface failed: %08x\n", hres);
    IHTMLElement_Release(elem);

    hres = IHTMLBodyElement_createTextRange(body, &range);
    IHTMLBodyElement_Release(body);
    ok(hres == S_OK, "createTextRange failed: %08x\n", hres);

    return range;
}
