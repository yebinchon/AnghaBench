
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int IUnknown ;
typedef int IHTMLWindow2 ;
typedef int IHTMLLocation ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 int DIID_DispHTMLLocation ;
 scalar_t__ E_POINTER ;
 scalar_t__ IHTMLDocument2_get_location (int *,int **) ;
 scalar_t__ IHTMLDocument2_get_parentWindow (int *,int **) ;
 int IHTMLLocation_Release (int *) ;
 scalar_t__ IHTMLLocation_get_href (int *,int *) ;
 scalar_t__ IHTMLLocation_get_pathname (int *,int *) ;
 scalar_t__ IHTMLWindow2_get_location (int *,int **) ;
 int IID_IHTMLLocation ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int location_iids ;
 int ok (int,char*,...) ;
 int strcmp_wa (int ,char*) ;
 int test_disp2 (int *,int *,int *,char*) ;
 int test_ifaces (int *,int ) ;
 int wine_dbgstr_w (int ) ;

__attribute__((used)) static void test_location(IHTMLDocument2 *doc)
{
    IHTMLLocation *location, *location2;
    IHTMLWindow2 *window;
    BSTR str;
    ULONG ref;
    HRESULT hres;

    hres = IHTMLDocument2_get_location(doc, &location);
    ok(hres == S_OK, "get_location failed: %08x\n", hres);

    hres = IHTMLDocument2_get_location(doc, &location2);
    ok(hres == S_OK, "get_location failed: %08x\n", hres);

    ok(location == location2, "location != location2\n");
    IHTMLLocation_Release(location2);

    hres = IHTMLDocument2_get_parentWindow(doc, &window);
    ok(hres == S_OK, "get_parentWindow failed: %08x\n", hres);

    hres = IHTMLWindow2_get_location(window, &location2);
    ok(hres == S_OK, "get_location failed: %08x\n", hres);
    ok(location == location2, "location != location2\n");
    IHTMLLocation_Release(location2);

    test_ifaces((IUnknown*)location, location_iids);
    test_disp2((IUnknown*)location, &DIID_DispHTMLLocation, &IID_IHTMLLocation, "about:blank");

    hres = IHTMLLocation_get_pathname(location, &str);
    ok(hres == S_OK, "get_pathname failed: %08x\n", hres);
    ok(!strcmp_wa(str, "blank"), "unexpected pathname %s\n", wine_dbgstr_w(str));
    SysFreeString(str);

    hres = IHTMLLocation_get_href(location, ((void*)0));
    ok(hres == E_POINTER, "get_href passed: %08x\n", hres);

    hres = IHTMLLocation_get_href(location, &str);
    ok(hres == S_OK, "get_href failed: %08x\n", hres);
    ok(!strcmp_wa(str, "about:blank"), "unexpected href %s\n", wine_dbgstr_w(str));
    SysFreeString(str);

    ref = IHTMLLocation_Release(location);
    ok(!ref, "location chould be destroyed here\n");
}
