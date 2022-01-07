
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IHTMLStyle ;
typedef int IHTMLElement2 ;
typedef int IHTMLElement ;
typedef int IHTMLCurrentStyle2 ;
typedef int IHTMLCurrentStyle ;
typedef scalar_t__ HRESULT ;


 int IHTMLCurrentStyle2_Release (int *) ;
 int IHTMLElement2_Release (int *) ;
 scalar_t__ IHTMLElement2_get_currentStyle (int *,int **) ;
 scalar_t__ IHTMLElement_get_style (int *,int **) ;
 int IHTMLStyle_Release (int *) ;
 scalar_t__ S_OK ;
 int VARIANT_FALSE ;
 int VARIANT_TRUE ;
 int * get_current_style2_iface (int *) ;
 int * get_elem2_iface (int *) ;
 int ok (int,char*,scalar_t__) ;
 int set_style_filter (int *,char*) ;
 int test_current_style_filter (int *,char*) ;
 int test_style_filter (int *,char*) ;
 int test_style_remove_attribute (int *,char*,int ) ;

__attribute__((used)) static void test_style_filters(IHTMLElement *elem)
{
    IHTMLElement2 *elem2 = get_elem2_iface((IUnknown*)elem);
    IHTMLCurrentStyle2 *current_style2;
    IHTMLCurrentStyle *current_style;
    IHTMLStyle *style;
    HRESULT hres;

    hres = IHTMLElement_get_style(elem, &style);
    ok(hres == S_OK, "get_style failed: %08x\n", hres);

    hres = IHTMLElement2_get_currentStyle(elem2, &current_style);
    ok(hres == S_OK, "get_style failed: %08x\n", hres);

    current_style2 = get_current_style2_iface((IUnknown*)current_style);

    test_style_filter(style, ((void*)0));
    test_current_style_filter(current_style2, ((void*)0));
    set_style_filter(style, "alpha(opacity=50.0040)");
    test_current_style_filter(current_style2, "alpha(opacity=50.0040)");
    set_style_filter(style, "alpha(opacity=100)");

    IHTMLStyle_Release(style);

    hres = IHTMLElement_get_style(elem, &style);
    ok(hres == S_OK, "get_style failed: %08x\n", hres);

    test_style_filter(style, "alpha(opacity=100)");
    set_style_filter(style, "xxx(a,b,c) alpha(opacity=100)");
    set_style_filter(style, ((void*)0));
    set_style_filter(style, "alpha(opacity=100)");
    test_style_remove_attribute(style, "filter", VARIANT_TRUE);
    test_style_remove_attribute(style, "filter", VARIANT_FALSE);
    test_style_filter(style, ((void*)0));


    IHTMLCurrentStyle2_Release(current_style2);
    IHTMLStyle_Release(style);
    IHTMLElement2_Release(elem2);
}
