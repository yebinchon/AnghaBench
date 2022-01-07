
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int elem_type_t ;
typedef int all_types ;
typedef int IUnknown ;
typedef void IHTMLLocation ;
typedef int IHTMLElementCollection ;
typedef int IHTMLElement ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;


 int DIID_DispHTMLDocument ;






 scalar_t__ E_UNEXPECTED ;
 int IHTMLDocument2_Release (int *) ;
 scalar_t__ IHTMLDocument2_get_all (int *,int **) ;
 scalar_t__ IHTMLDocument2_get_body (int *,int **) ;
 scalar_t__ IHTMLDocument2_get_location (int *,void**) ;
 int IHTMLElementCollection_Release (int *) ;
 int IHTMLElement_Release (int *) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int * create_docfrag (int *) ;
 int * get_doc_node (int *) ;
 int * get_elem_by_id (int *,char*,int ) ;
 int * get_owner_doc (int *) ;
 int iface_cmp (int *,int *) ;
 int ok (int,char*,...) ;
 int * test_create_elem (int *,char*) ;
 int test_disp (int *,int *,char*) ;
 int test_elem_collection (int *,int const*,int) ;
 int test_elem_source_index (int *,int) ;
 int test_node_append_child (int *,int *) ;

__attribute__((used)) static void test_docfrag(IHTMLDocument2 *doc)
{
    IHTMLDocument2 *frag, *owner_doc, *doc_node;
    IHTMLElement *div, *body, *br;
    IHTMLElementCollection *col;
    IHTMLLocation *location;
    HRESULT hres;

    static const elem_type_t all_types[] = {
        129,
        130,
        128,
        133,
        131,
        132
    };

    frag = create_docfrag(doc);

    test_disp((IUnknown*)frag, &DIID_DispHTMLDocument, "[object]");

    body = (void*)0xdeadbeef;
    hres = IHTMLDocument2_get_body(frag, &body);
    ok(hres == S_OK, "get_body failed: %08x\n", hres);
    ok(!body, "body != NULL\n");

    location = (void*)0xdeadbeef;
    hres = IHTMLDocument2_get_location(frag, &location);
    ok(hres == E_UNEXPECTED, "get_location failed: %08x\n", hres);
    ok(location == (void*)0xdeadbeef, "location changed\n");

    br = test_create_elem(doc, "BR");
    test_elem_source_index(br, -1);
    test_node_append_child((IUnknown*)frag, (IUnknown*)br);
    test_elem_source_index(br, 0);
    IHTMLElement_Release(br);

    div = get_elem_by_id(doc, "divid", TRUE);
    test_node_append_child((IUnknown*)div, (IUnknown*)frag);
    IHTMLElement_Release(div);

    hres = IHTMLDocument2_get_all(doc, &col);
    ok(hres == S_OK, "get_all failed: %08x\n", hres);
    test_elem_collection((IUnknown*)col, all_types, sizeof(all_types)/sizeof(all_types[0]));
    IHTMLElementCollection_Release(col);

    div = test_create_elem(frag, "div");
    owner_doc = get_owner_doc((IUnknown*)div);
    doc_node = get_doc_node(doc);
    ok(iface_cmp((IUnknown*)owner_doc, (IUnknown*)doc_node), "owner_doc != doc_node\n");
    IHTMLDocument2_Release(doc_node);
    IHTMLDocument2_Release(owner_doc);
    IHTMLElement_Release(div);

    IHTMLDocument2_Release(frag);
}
