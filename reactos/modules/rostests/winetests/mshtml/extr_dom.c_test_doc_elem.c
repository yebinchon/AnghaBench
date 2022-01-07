
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IHTMLElement ;
typedef int IHTMLDocument3 ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 scalar_t__ IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IHTMLDocument2_Release (int *) ;
 scalar_t__ IHTMLDocument2_toString (int *,int *) ;
 int IHTMLDocument3_Release (int *) ;
 scalar_t__ IHTMLDocument3_get_documentElement (int *,int **) ;
 int IHTMLElement_Release (int *) ;
 int IID_IHTMLDocument3 ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int * get_doc_node (int *) ;
 int * get_owner_doc (int *) ;
 int iface_cmp (int *,int *) ;
 int ok (int,char*,...) ;
 int strcmp_wa (int ,char*) ;
 int test_elem_client_rect (int *) ;
 int test_elem_tag (int *,char*) ;
 int test_node_name (int *,char*) ;
 int * wine_dbgstr_w (int ) ;

__attribute__((used)) static void test_doc_elem(IHTMLDocument2 *doc)
{
    IHTMLDocument2 *doc_node, *owner_doc;
    IHTMLElement *elem;
    IHTMLDocument3 *doc3;
    HRESULT hres;
    BSTR bstr;

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IHTMLDocument3, (void**)&doc3);
    ok(hres == S_OK, "QueryInterface(IID_IHTMLDocument3) failed: %08x\n", hres);

    hres = IHTMLDocument2_toString(doc, &bstr);
    ok(hres == S_OK, "toString failed: %08x\n", hres);
    ok(!strcmp_wa(bstr, "[object]"),
            "toString returned %s, expected [object]\n", wine_dbgstr_w(bstr));
    SysFreeString(bstr);

    hres = IHTMLDocument3_get_documentElement(doc3, &elem);
    IHTMLDocument3_Release(doc3);
    ok(hres == S_OK, "get_documentElement failed: %08x\n", hres);

    test_node_name((IUnknown*)elem, "HTML");
    test_elem_tag((IUnknown*)elem, "HTML");

    doc_node = get_doc_node(doc);
    owner_doc = get_owner_doc((IUnknown*)elem);
    ok(iface_cmp((IUnknown *)doc_node, (IUnknown *)owner_doc), "doc_node != owner_doc\n");
    IHTMLDocument2_Release(owner_doc);

    owner_doc = get_owner_doc((IUnknown*)doc_node);
    ok(!owner_doc, "owner_doc = %p\n", owner_doc);
    IHTMLDocument2_Release(doc_node);

    test_elem_client_rect((IUnknown*)elem);

    IHTMLElement_Release(elem);
}
