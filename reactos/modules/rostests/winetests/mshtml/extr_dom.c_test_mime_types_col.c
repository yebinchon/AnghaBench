
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef scalar_t__ LONG ;
typedef int IUnknown ;
typedef int IOmNavigator ;
typedef int IHTMLMimeTypesCollection ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IHTMLMimeTypesCollection_Release (int *) ;
 scalar_t__ IHTMLMimeTypesCollection_get_length (int *,scalar_t__*) ;
 int IID_IHTMLMimeTypesCollection ;
 scalar_t__ IOmNavigator_get_mimeTypes (int *,int **) ;
 scalar_t__ S_OK ;
 int iface_cmp (int *,int *) ;
 int ok (int,char*,...) ;
 int test_disp (int *,int *,char*) ;

__attribute__((used)) static void test_mime_types_col(IOmNavigator *nav)
{
    IHTMLMimeTypesCollection *col, *col2;
    LONG length;
    ULONG ref;
    HRESULT hres;

    hres = IOmNavigator_get_mimeTypes(nav, &col);
    ok(hres == S_OK, "get_mimeTypes failed: %08x\n", hres);

    hres = IOmNavigator_get_mimeTypes(nav, &col2);
    ok(hres == S_OK, "get_mimeTypes failed: %08x\n", hres);
    ok(iface_cmp((IUnknown*)col, (IUnknown*)col2), "col != col2\n");
    IHTMLMimeTypesCollection_Release(col2);

    test_disp((IUnknown*)col, &IID_IHTMLMimeTypesCollection, "[object]");

    length = 0xdeadbeef;
    hres = IHTMLMimeTypesCollection_get_length(col, &length);
    ok(hres == S_OK, "get_length failed: %08x\n", hres);
    ok(!length, "length = %d\n", length);

    ref = IHTMLMimeTypesCollection_Release(col);
    ok(!ref, "ref=%d\n", ref);
}
