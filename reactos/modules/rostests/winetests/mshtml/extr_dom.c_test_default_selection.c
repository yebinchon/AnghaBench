
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLTxtRange ;
typedef int IHTMLSelectionObject ;
typedef int IHTMLDocument2 ;
typedef int IDispatch ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 scalar_t__ IDispatch_QueryInterface (int *,int *,void**) ;
 int IDispatch_Release (int *) ;
 scalar_t__ IHTMLDocument2_get_selection (int *,int **) ;
 int IHTMLSelectionObject_Release (int *) ;
 scalar_t__ IHTMLSelectionObject_createRange (int *,int **) ;
 scalar_t__ IHTMLSelectionObject_get_type (int *,int *) ;
 int IHTMLTxtRange_Release (int *) ;
 int IID_IHTMLTxtRange ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int ok (int,char*,scalar_t__) ;
 int strcmp_wa (int ,char*) ;
 int test_range_text (int *,int *) ;
 scalar_t__ wine_dbgstr_w (int ) ;

__attribute__((used)) static void test_default_selection(IHTMLDocument2 *doc)
{
    IHTMLSelectionObject *selection;
    IHTMLTxtRange *range;
    IDispatch *disp;
    BSTR str;
    HRESULT hres;

    hres = IHTMLDocument2_get_selection(doc, &selection);
    ok(hres == S_OK, "get_selection failed: %08x\n", hres);

    hres = IHTMLSelectionObject_get_type(selection, &str);
    ok(hres == S_OK, "get_type failed: %08x\n", hres);
    ok(!strcmp_wa(str, "None"), "type = %s\n", wine_dbgstr_w(str));
    SysFreeString(str);

    hres = IHTMLSelectionObject_createRange(selection, &disp);
    IHTMLSelectionObject_Release(selection);
    ok(hres == S_OK, "createRange failed: %08x\n", hres);

    hres = IDispatch_QueryInterface(disp, &IID_IHTMLTxtRange, (void**)&range);
    IDispatch_Release(disp);
    ok(hres == S_OK, "Could not get IHTMLTxtRange interface: %08x\n", hres);

    test_range_text(range, ((void*)0));
    IHTMLTxtRange_Release(range);
}
