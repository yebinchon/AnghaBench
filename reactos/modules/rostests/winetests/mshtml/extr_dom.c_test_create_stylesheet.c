
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int elem_type_t ;
typedef int all_types2 ;
typedef int all_types ;
typedef int IUnknown ;
typedef int IHTMLStyleSheet ;
typedef int IHTMLStyleElement ;
typedef int IHTMLElement ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;
 scalar_t__ IHTMLDocument2_createStyleSheet (int *,int *,int,int **) ;
 scalar_t__ IHTMLElement_QueryInterface (int *,int *,void**) ;
 int IHTMLElement_Release (int *) ;
 int IHTMLStyleElement_Release (int *) ;
 scalar_t__ IHTMLStyleElement_get_styleSheet (int *,int **) ;
 int IHTMLStyleSheet_Release (int *) ;
 int IID_IHTMLStyleElement ;
 scalar_t__ S_OK ;
 int * get_doc_elem (int *) ;
 int iface_cmp (int *,int *) ;
 int ok (int,char*,...) ;
 int test_doc_all (int *,int const*,int) ;
 int test_elem_getelembytag (int *,int const,int,int **) ;

__attribute__((used)) static void test_create_stylesheet(IHTMLDocument2 *doc)
{
    IHTMLStyleSheet *stylesheet, *stylesheet2;
    IHTMLStyleElement *style_elem;
    IHTMLElement *doc_elem, *elem;
    HRESULT hres;

    static const elem_type_t all_types[] = {
        130,
        131,
        128,
        133,
        132
    };

    static const elem_type_t all_types2[] = {
        130,
        131,
        128,
        129,
        133,
        132
    };

    test_doc_all(doc, all_types, sizeof(all_types)/sizeof(*all_types));

    hres = IHTMLDocument2_createStyleSheet(doc, ((void*)0), -1, &stylesheet);
    ok(hres == S_OK, "createStyleSheet failed: %08x\n", hres);

    test_doc_all(doc, all_types2, sizeof(all_types2)/sizeof(*all_types2));

    doc_elem = get_doc_elem(doc);

    test_elem_getelembytag((IUnknown*)doc_elem, 129, 1, &elem);
    IHTMLElement_Release(doc_elem);

    hres = IHTMLElement_QueryInterface(elem, &IID_IHTMLStyleElement, (void**)&style_elem);
    IHTMLElement_Release(elem);
    ok(hres == S_OK, "Could not get IHTMLStyleElement iface: %08x\n", hres);

    stylesheet2 = ((void*)0);
    hres = IHTMLStyleElement_get_styleSheet(style_elem, &stylesheet2);
    ok(hres == S_OK, "get_styleSheet failed: %08x\n", hres);
    ok(stylesheet2 != ((void*)0), "stylesheet2 == NULL\n");
    ok(iface_cmp((IUnknown*)stylesheet, (IUnknown*)stylesheet2), "stylesheet != stylesheet2\n");

    IHTMLStyleSheet_Release(stylesheet2);
    IHTMLStyleSheet_Release(stylesheet);

    IHTMLStyleElement_Release(style_elem);
}
