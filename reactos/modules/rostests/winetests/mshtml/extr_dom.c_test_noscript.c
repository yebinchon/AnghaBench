
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const elem_type_t ;
typedef int body_all_types ;
typedef int all_types ;
typedef int IUnknown ;
typedef int IHTMLElementCollection ;
typedef int IHTMLElement ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;
 scalar_t__ IHTMLDocument2_get_all (int *,int **) ;
 int IHTMLElementCollection_Release (int *) ;
 int IHTMLElement_Release (int *) ;
 scalar_t__ S_OK ;
 int * doc_get_body (int *) ;
 int ok (int,char*,scalar_t__) ;
 int test_elem_all (int *,int const*,int) ;
 int test_elem_collection (int *,int const*,int) ;
 int test_elem_set_innerhtml (int *,char*) ;

__attribute__((used)) static void test_noscript(IHTMLDocument2 *doc)
{
    IHTMLElementCollection *col;
    IHTMLElement *body;
    HRESULT hres;

    static const elem_type_t all_types[] = {
        130,
        131,
        128,
        129,
        133,
        129
    };

    static const elem_type_t body_all_types[] = {
        132,
        129
    };

    hres = IHTMLDocument2_get_all(doc, &col);
    ok(hres == S_OK, "get_all failed: %08x\n", hres);
    test_elem_collection((IUnknown*)col, all_types, sizeof(all_types)/sizeof(all_types[0]));
    IHTMLElementCollection_Release(col);

    body = doc_get_body(doc);
    test_elem_set_innerhtml((IUnknown*)body, "<div>test</div><noscript><a href=\"about:blank\">A</a></noscript>");
    test_elem_all((IUnknown*)body, body_all_types, sizeof(body_all_types)/sizeof(*body_all_types));
    IHTMLElement_Release(body);
}
