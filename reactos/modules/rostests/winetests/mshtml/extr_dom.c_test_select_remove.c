
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLSelectElement ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_INVALIDARG ;
 scalar_t__ IHTMLSelectElement_remove (int *,int) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int test_select_length (int *,int) ;

__attribute__((used)) static void test_select_remove(IHTMLSelectElement *select)
{
    HRESULT hres;

    hres = IHTMLSelectElement_remove(select, 3);
    ok(hres == S_OK, "remove failed: %08x, expected S_OK\n", hres);
    test_select_length(select, 2);

    hres = IHTMLSelectElement_remove(select, -1);
    ok(hres == E_INVALIDARG, "remove failed: %08x, expected E_INVALIDARG\n", hres);
    test_select_length(select, 2);

    hres = IHTMLSelectElement_remove(select, 0);
    ok(hres == S_OK, "remove failed:%08x\n", hres);
    test_select_length(select, 1);
}
