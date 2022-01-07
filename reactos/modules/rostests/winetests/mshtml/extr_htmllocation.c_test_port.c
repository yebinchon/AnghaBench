
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct location_test {scalar_t__ port; int name; } ;
typedef int IHTMLLocation ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 scalar_t__ E_POINTER ;
 scalar_t__ IHTMLLocation_get_port (int *,int *) ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int ok (int,char*,int ,scalar_t__,...) ;
 int str_eq_wa (int ,scalar_t__) ;
 scalar_t__ wine_dbgstr_w (int ) ;

__attribute__((used)) static void test_port(IHTMLLocation *loc, const struct location_test *test)
{
    HRESULT hres;
    BSTR str;

    hres = IHTMLLocation_get_port(loc, ((void*)0));
    ok(hres == E_POINTER,
            "%s: get_port should have failed with E_POINTER (0x%08x), was: 0x%08x\n",
            test->name, E_POINTER, hres);

    hres = IHTMLLocation_get_port(loc, &str);
    ok(hres == S_OK, "%s: get_port failed: 0x%08x\n", test->name, hres);
    if(hres == S_OK)
        ok(str_eq_wa(str, test->port),
                "%s: expected retrieved port to be L\"%s\", was: %s\n",
                test->name, test->port, wine_dbgstr_w(str));
    SysFreeString(str);
}
