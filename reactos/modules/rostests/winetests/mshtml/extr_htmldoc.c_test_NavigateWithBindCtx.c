
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int LPOLESTR ;
typedef int IBindCtx ;
typedef int BSTR ;


 scalar_t__ VT_I4 ;
 scalar_t__ V_I4 (int *) ;
 scalar_t__ V_VT (int *) ;
 scalar_t__ navHyperlink ;
 int nav_url ;
 int ok (int,char*,...) ;
 int strcmp_wa (int ,int ) ;
 scalar_t__ wine_dbgstr_w (int ) ;

__attribute__((used)) static void test_NavigateWithBindCtx(BSTR uri, VARIANT *flags, VARIANT *target_frame, VARIANT *post_data,
        VARIANT *headers, IBindCtx *bind_ctx, LPOLESTR url_fragment)
{
    ok(!strcmp_wa(uri, nav_url), "uri = %s\n", wine_dbgstr_w(uri));
    ok(V_VT(flags) == VT_I4, "V_VT(flags) = %d\n", V_VT(flags));
    ok(V_I4(flags) == navHyperlink, "V_I4(flags) = %x\n", V_I4(flags));
    ok(!target_frame, "target_frame != NULL\n");
    ok(!post_data, "post_data != NULL\n");
    ok(!headers, "headers != NULL\n");
    ok(bind_ctx != ((void*)0), "bind_ctx == NULL\n");
    ok(!url_fragment, "url_dragment = %s\n", wine_dbgstr_w(url_fragment));
}
