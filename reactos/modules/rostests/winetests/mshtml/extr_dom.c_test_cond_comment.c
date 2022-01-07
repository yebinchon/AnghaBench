
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int elem_type_t ;
typedef int all_types ;
typedef int IUnknown ;
typedef int IHTMLElementCollection ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;







 scalar_t__ IHTMLDocument2_get_all (int *,int **) ;
 int IHTMLElementCollection_Release (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int test_elem_collection (int *,int const*,int) ;

__attribute__((used)) static void test_cond_comment(IHTMLDocument2 *doc)
{
    IHTMLElementCollection *col;
    HRESULT hres;

    static const elem_type_t all_types[] = {
        129,
        130,
        128,
        132,
        131
    };

    hres = IHTMLDocument2_get_all(doc, &col);
    ok(hres == S_OK, "get_all failed: %08x\n", hres);
    test_elem_collection((IUnknown*)col, all_types, sizeof(all_types)/sizeof(all_types[0]));
    IHTMLElementCollection_Release(col);
}
