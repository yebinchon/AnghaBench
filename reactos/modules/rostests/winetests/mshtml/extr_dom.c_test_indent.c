
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int indent_types ;
typedef int elem_type_t ;
typedef int all_types ;
typedef int IUnknown ;
typedef int IHTMLTxtRange ;
typedef int IHTMLElementCollection ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;


 int CGID_MSHTML ;
 int IDM_INDENT ;
 scalar_t__ IHTMLDocument2_get_all (int *,int **) ;
 int IHTMLElementCollection_Release (int *) ;
 int IHTMLTxtRange_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int * test_create_body_range (int *) ;
 int test_elem_collection (int *,int const*,int) ;
 int test_exec (int *,int *,int ,int *,int *) ;

__attribute__((used)) static void test_indent(IHTMLDocument2 *doc)
{
    IHTMLElementCollection *col;
    IHTMLTxtRange *range;
    HRESULT hres;

    static const elem_type_t all_types[] = {
        130,
        131,
        128,
        133,
        132,
        135,
    };

    static const elem_type_t indent_types[] = {
        130,
        131,
        128,
        133,
        134,
        129,
        132,
        135,
    };

    hres = IHTMLDocument2_get_all(doc, &col);
    ok(hres == S_OK, "get_all failed: %08x\n", hres);
    test_elem_collection((IUnknown*)col, all_types, sizeof(all_types)/sizeof(all_types[0]));
    IHTMLElementCollection_Release(col);

    range = test_create_body_range(doc);
    test_exec((IUnknown*)range, &CGID_MSHTML, IDM_INDENT, ((void*)0), ((void*)0));
    IHTMLTxtRange_Release(range);

    hres = IHTMLDocument2_get_all(doc, &col);
    ok(hres == S_OK, "get_all failed: %08x\n", hres);
    test_elem_collection((IUnknown*)col, indent_types, sizeof(indent_types)/sizeof(indent_types[0]));
    IHTMLElementCollection_Release(col);
}
