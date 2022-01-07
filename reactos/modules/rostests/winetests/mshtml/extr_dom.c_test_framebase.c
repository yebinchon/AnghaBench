
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IHTMLFrameBase ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ BSTR ;


 scalar_t__ E_INVALIDARG ;
 int IHTMLFrameBase_Release (int *) ;
 scalar_t__ IHTMLFrameBase_get_frameBorder (int *,scalar_t__*) ;
 scalar_t__ IHTMLFrameBase_get_scrolling (int *,scalar_t__*) ;
 scalar_t__ IHTMLFrameBase_put_frameBorder (int *,scalar_t__) ;
 scalar_t__ IHTMLFrameBase_put_scrolling (int *,scalar_t__) ;
 int IID_IHTMLFrameBase ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 scalar_t__ S_OK ;
 int SysFreeString (scalar_t__) ;
 scalar_t__ a2bstr (char*) ;
 int ok (int,char*,scalar_t__) ;
 int set_framebase_marginheight (int *,char*) ;
 int set_framebase_marginwidth (int *,char*) ;
 int strcmp_wa (scalar_t__,char*) ;
 int test_framebase_marginheight (int *,char*) ;
 int test_framebase_marginwidth (int *,char*) ;
 scalar_t__ wine_dbgstr_w (scalar_t__) ;

__attribute__((used)) static void test_framebase(IUnknown *unk)
{
    IHTMLFrameBase *fbase;
    BSTR str;
    HRESULT hres;


    hres = IUnknown_QueryInterface(unk, &IID_IHTMLFrameBase, (void**)&fbase);
    ok(hres == S_OK, "Could not get IHTMLFrameBase interface: 0x%08x\n", hres);

    hres = IHTMLFrameBase_get_scrolling(fbase, &str);
    ok(hres == S_OK, "IHTMLFrameBase_get_scrolling failed: 0x%08x\n", hres);
    ok(!strcmp_wa(str, "auto"), "get_scrolling should have given 'auto', gave: %s\n", wine_dbgstr_w(str));
    SysFreeString(str);

    str = a2bstr("no");
    hres = IHTMLFrameBase_put_scrolling(fbase, str);
    ok(hres == S_OK, "IHTMLFrameBase_put_scrolling failed: 0x%08x\n", hres);
    SysFreeString(str);

    hres = IHTMLFrameBase_get_scrolling(fbase, &str);
    ok(hres == S_OK, "IHTMLFrameBase_get_scrolling failed: 0x%08x\n", hres);
    ok(!strcmp_wa(str, "no"), "get_scrolling should have given 'no', gave: %s\n", wine_dbgstr_w(str));
    SysFreeString(str);

    str = a2bstr("junk");
    hres = IHTMLFrameBase_put_scrolling(fbase, str);
    ok(hres == E_INVALIDARG, "IHTMLFrameBase_put_scrolling should have failed "
            "with E_INVALIDARG, instead: 0x%08x\n", hres);
    SysFreeString(str);

    hres = IHTMLFrameBase_get_scrolling(fbase, &str);
    ok(hres == S_OK, "IHTMLFrameBase_get_scrolling failed: 0x%08x\n", hres);
    ok(!strcmp_wa(str, "no"), "get_scrolling should have given 'no', gave: %s\n", wine_dbgstr_w(str));
    SysFreeString(str);

    hres = IHTMLFrameBase_get_frameBorder(fbase, &str);
    ok(hres == S_OK, "get_frameBorder failed: %08x\n", hres);
    ok(!str, "frameBorder = %s\n", wine_dbgstr_w(str));

    str = a2bstr("1");
    hres = IHTMLFrameBase_put_frameBorder(fbase, str);
    ok(hres == S_OK, "put_frameBorder failed: %08x\n", hres);
    SysFreeString(str);

    hres = IHTMLFrameBase_get_frameBorder(fbase, &str);
    ok(hres == S_OK, "get_frameBorder failed: %08x\n", hres);
    ok(!strcmp_wa(str, "1"), "frameBorder = %s, expected \"1\"\n", wine_dbgstr_w(str));

    test_framebase_marginheight(fbase, ((void*)0));
    set_framebase_marginheight(fbase, "1px");
    test_framebase_marginheight(fbase, "1");

    test_framebase_marginwidth(fbase, ((void*)0));
    set_framebase_marginwidth(fbase, "2px");
    test_framebase_marginwidth(fbase, "2");

    IHTMLFrameBase_Release(fbase);
}
