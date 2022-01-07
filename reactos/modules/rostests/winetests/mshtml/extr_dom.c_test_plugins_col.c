
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int LONG ;
typedef int IUnknown ;
typedef int IOmNavigator ;
typedef int IHTMLWindow2 ;
typedef int IHTMLPluginsCollection ;
typedef int IHTMLDocument2 ;
typedef int HRESULT ;


 int DIID_DispCPlugins ;
 int IHTMLPluginsCollection_Release (int *) ;
 int IHTMLPluginsCollection_get_length (int *,int*) ;
 int IHTMLPluginsCollection_refresh (int *,int ) ;
 int IHTMLWindow2_Release (int *) ;
 int IHTMLWindow2_get_navigator (int *,int **) ;
 int IID_IHTMLPluginsCollection ;
 int IOmNavigator_Release (int *) ;
 int IOmNavigator_get_plugins (int *,int **) ;
 int S_OK ;
 int VARIANT_FALSE ;
 int VARIANT_TRUE ;
 int * get_doc_window (int *) ;
 int iface_cmp (int *,int *) ;
 int ok (int,char*,...) ;
 int test_disp2 (int *,int *,int *,char*) ;

__attribute__((used)) static void test_plugins_col(IHTMLDocument2 *doc)
{
    IHTMLPluginsCollection *col, *col2;
    IHTMLWindow2 *window;
    IOmNavigator *nav;
    ULONG ref;
    LONG len;
    HRESULT hres;

    window = get_doc_window(doc);
    hres = IHTMLWindow2_get_navigator(window, &nav);
    ok(hres == S_OK, "get_navigator failed: %08x\n", hres);
    IHTMLWindow2_Release(window);

    hres = IOmNavigator_get_plugins(nav, &col);
    ok(hres == S_OK, "get_plugins failed: %08x\n", hres);

    hres = IOmNavigator_get_plugins(nav, &col2);
    ok(hres == S_OK, "get_plugins failed: %08x\n", hres);
    ok(iface_cmp((IUnknown*)col, (IUnknown*)col2), "col != col2\n");
    IHTMLPluginsCollection_Release(col2);

    test_disp2((IUnknown*)col, &DIID_DispCPlugins, &IID_IHTMLPluginsCollection, "[object]");

    len = 0xdeadbeef;
    hres = IHTMLPluginsCollection_get_length(col, &len);
    ok(hres == S_OK, "get_length failed: %08x\n", hres);
    ok(!len, "length = %d\n", len);

    hres = IHTMLPluginsCollection_refresh(col, VARIANT_FALSE);
    ok(hres == S_OK, "refresh failed: %08x\n", hres);

    hres = IHTMLPluginsCollection_refresh(col, VARIANT_TRUE);
    ok(hres == S_OK, "refresh failed: %08x\n", hres);

    ref = IHTMLPluginsCollection_Release(col);
    ok(!ref, "ref=%d\n", ref);

    IOmNavigator_Release(nav);
}
