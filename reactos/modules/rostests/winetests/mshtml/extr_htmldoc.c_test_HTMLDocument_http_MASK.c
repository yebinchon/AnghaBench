#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  DWL_EXPECT_HISTUPDATE ; 
 int /*<<< orphan*/  DWL_EXTERNAL ; 
 int /*<<< orphan*/  DWL_HTTP ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LD_DOLOAD ; 
 int /*<<< orphan*/  OLECMDF_SUPPORTED ; 
 int /*<<< orphan*/  S_FALSE ; 
 scalar_t__ S_OK ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * doc_unk ; 
 int /*<<< orphan*/  http_urlW ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ ipsex ; 
 scalar_t__ FUNC5 () ; 
 void* nav_serv_url ; 
 void* nav_url ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/ * prev_url ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ support_wbapp ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,scalar_t__,char*,char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (char*,char*) ; 
 int /*<<< orphan*/ * view ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 int /*<<< orphan*/  winetest_interactive ; 

__attribute__((used)) static void FUNC30(BOOL with_wbapp)
{
    IMoniker *http_mon;
    IHTMLDocument2 *doc;
    ULONG ref;
    HRESULT hres;

    FUNC28("Testing HTMLDocument (http%s)...\n", with_wbapp ? " with IWebBrowserApp" : "");

    support_wbapp = with_wbapp;

    if(!winetest_interactive && FUNC5()) {
        FUNC29("IE running in Enhanced Security Configuration\n");
        return;
    }

    FUNC4(LD_DOLOAD);
    ipsex = TRUE;

    doc = FUNC3();
    doc_unk = (IUnknown*)doc;

    hres = FUNC0(NULL, http_urlW, &http_mon);
    FUNC6(hres == S_OK, "CreateURLMoniker failed: %08x\n", hres);

    FUNC17(doc);
    FUNC9(doc);
    FUNC10((IUnknown*)doc, NULL, NULL, FALSE);
    FUNC16(doc, http_mon);
    FUNC14(doc);
    FUNC20(DWL_HTTP);
    FUNC19(doc);
    FUNC12(doc, S_FALSE);
    FUNC13(doc, OLECMDF_SUPPORTED);
    FUNC10((IUnknown*)doc, http_mon, NULL, FALSE);
    FUNC26(doc);
    FUNC18((IUnknown*)doc);

    nav_url = nav_serv_url = "http://test.winehq.org/tests/winehq_snapshot/"; /* for valid prev nav_url */
    if(support_wbapp) {
        FUNC24(doc, FALSE, "#test", "http://test.winehq.org/tests/winehq_snapshot/#test", FALSE, TRUE, 0);
        FUNC23(doc, "#hash_test");
        FUNC26(doc);
        FUNC25(doc);
    }
    FUNC24(doc, FALSE, NULL, "javascript:external%20&&undefined", TRUE, FALSE, 0);
    FUNC24(doc, FALSE, NULL, "about:blank", FALSE, FALSE, support_wbapp ? DWL_EXPECT_HISTUPDATE : 0);
    FUNC24(doc, TRUE, NULL, "about:replace", FALSE, FALSE, 0);
    if(support_wbapp) {
        FUNC21(doc);
        FUNC15(doc);
        FUNC24(doc, FALSE, NULL, "about:blank", FALSE, FALSE, support_wbapp ? DWL_EXPECT_HISTUPDATE : 0);
    }

    prev_url = nav_serv_url;
    FUNC22(doc, TRUE);
    if(!support_wbapp) /* FIXME */
        FUNC22(doc, FALSE);
    if(support_wbapp) {
        FUNC24(doc, FALSE, NULL, "http://test.winehq.org/tests/file.winetest", FALSE, FALSE, DWL_EXTERNAL);
        FUNC27(doc);
    }

    FUNC11(doc, TRUE);
    FUNC8(doc, FALSE);
    FUNC12(doc, S_FALSE);
    FUNC10((IUnknown*)doc, NULL, prev_url, support_wbapp);

    if(view)
        FUNC2(view);
    view = NULL;

    FUNC7(doc);

    ref = FUNC1(http_mon);
    FUNC6(!ref, "ref=%d, expected 0\n", ref);
}