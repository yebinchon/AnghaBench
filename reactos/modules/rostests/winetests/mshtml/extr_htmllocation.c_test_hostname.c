
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct location_test {char* hostname; int name; } ;
typedef int IHTMLLocation ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 scalar_t__ E_POINTER ;
 scalar_t__ IHTMLDocument2_get_domain (int *,int *) ;
 scalar_t__ IHTMLLocation_get_hostname (int *,int *) ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int ok (int,char*,int ,scalar_t__,...) ;
 int str_eq_wa (int ,char*) ;
 scalar_t__ wine_dbgstr_w (int ) ;

__attribute__((used)) static void test_hostname(IHTMLLocation *loc, IHTMLDocument2 *doc, const struct location_test *test)
{
    HRESULT hres;
    BSTR str;

    hres = IHTMLLocation_get_hostname(loc, ((void*)0));
    ok(hres == E_POINTER,
            "%s: get_hostname should have failed with E_POINTER (0x%08x), was: 0x%08x\n",
            test->name, E_POINTER, hres);

    hres = IHTMLLocation_get_hostname(loc, &str);
    ok(hres == S_OK, "%s: get_hostname failed: 0x%08x\n", test->name, hres);
    if(hres == S_OK)
        ok(str_eq_wa(str, test->hostname),
                "%s: expected retrieved hostname to be L\"%s\", was: %s\n",
                test->name, test->hostname, wine_dbgstr_w(str));
    SysFreeString(str);

    hres = IHTMLDocument2_get_domain(doc, &str);
    ok(hres == S_OK, "%s: get_domain failed: 0x%08x\n", test->name, hres);
    if(hres == S_OK)
        ok(str_eq_wa(str, test->hostname ? test->hostname : ""),
                "%s: expected retrieved domain to be L\"%s\", was: %s\n",
                test->name, test->hostname, wine_dbgstr_w(str));
    SysFreeString(str);
}
