
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLSelectElement ;
typedef int IHTMLFormElement ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IHTMLSelectElement_get_form (int *,int **) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_select_form_notfound(IHTMLSelectElement *select)
{
    IHTMLFormElement *form;
    HRESULT hres;

    form = (IHTMLFormElement*)0xdeadbeef;
    hres = IHTMLSelectElement_get_form(select, &form);
    ok(hres == S_OK, "get_form failed: %08x\n", hres);
    ok(form == ((void*)0), "got %p\n", form);
}
