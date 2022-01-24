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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENTSITE_EXPECTPATH ; 
 int /*<<< orphan*/  CLIENTSITE_SETNULL ; 
 int /*<<< orphan*/  CallUIActivate_AfterShow ; 
 int /*<<< orphan*/  CallUIActivate_None ; 
 int /*<<< orphan*/  CustomDocHostUIHandler ; 
 int DWL_CSS ; 
 int DWL_TRYCSS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LD_DOLOAD ; 
 int /*<<< orphan*/  LD_NO ; 
 int /*<<< orphan*/  Moniker ; 
 int /*<<< orphan*/  OLECMDF_SUPPORTED ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  call_UIActivate ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  doc_hwnd ; 
 int /*<<< orphan*/ * doc_unk ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ report_mime ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (char*,char*,char*) ; 
 int /*<<< orphan*/ * view ; 

__attribute__((used)) static void FUNC32(BOOL do_load, BOOL mime)
{
    IHTMLDocument2 *doc;

    FUNC31("Testing HTMLDocument (%s, %s)...\n", (do_load ? "load" : "no load"),
            (report_mime ? "mime" : "no mime"));

    FUNC3(do_load ? LD_DOLOAD : LD_NO);
    report_mime = mime;

    doc = FUNC2();
    doc_unk = (IUnknown*)doc;

    FUNC22(doc);
    FUNC8(doc);
    FUNC15(doc, S_FALSE);
    FUNC16(doc, OLECMDF_SUPPORTED);
    FUNC29(doc, FALSE);
    FUNC24(doc);
    FUNC11(doc);
    FUNC12((IUnknown*)doc, NULL, NULL, FALSE);
    FUNC21(doc, &Moniker);
    if(!do_load)
        FUNC20(doc);

    FUNC7(doc, CLIENTSITE_EXPECTPATH);

    if(do_load) {
        FUNC6(doc, &CustomDocHostUIHandler);
        FUNC26(DWL_CSS|DWL_TRYCSS);
        FUNC12((IUnknown*)doc, &Moniker, NULL, FALSE);
        FUNC27(doc);
    }

    FUNC16(doc, OLECMDF_SUPPORTED);
    FUNC18(doc);
    FUNC17(doc);
    FUNC28(doc, 200);
    FUNC28(doc, 100);
    FUNC19(doc);
    FUNC25(doc, TRUE);
    FUNC29(doc, TRUE);
    FUNC30(doc);

    FUNC23();
    FUNC17(doc);
    FUNC25(doc, TRUE);
    FUNC14(doc, TRUE);

    /* Calling test_OleCommandTarget here causes Segmentation Fault with native
     * MSHTML. It doesn't with Wine. */

    FUNC25(doc, FALSE);
    FUNC13();
    FUNC14(doc, FALSE);
    FUNC10();
    FUNC9(doc, FALSE);

    /* Activate HTMLDocument again */
    FUNC7(doc, CLIENTSITE_SETNULL);
    FUNC25(doc, TRUE);
    FUNC17(doc);
    FUNC23();
    FUNC14(doc, TRUE);
    FUNC9(doc, FALSE);

    /* Activate HTMLDocument again, this time without UIActivate */
    call_UIActivate = CallUIActivate_None;
    FUNC7(doc, CLIENTSITE_SETNULL);
    FUNC25(doc, TRUE);

    FUNC29(doc, TRUE);
    FUNC6(doc, NULL);
    FUNC29(doc, FALSE);

    FUNC23();
    FUNC14(doc, TRUE);
    FUNC10();
    FUNC10();
    FUNC9(doc, TRUE);
    FUNC20(doc);
    FUNC12((IUnknown*)doc, do_load ? &Moniker : NULL, NULL, FALSE);

    if(!do_load) {
        /* Activate HTMLDocument again, calling UIActivate after showing the window */
        call_UIActivate = CallUIActivate_AfterShow;
        FUNC7(doc, 0);
        FUNC25(doc, TRUE);
        FUNC17(doc);
        FUNC23();
        FUNC14(doc, TRUE);
        FUNC9(doc, FALSE);
        call_UIActivate = CallUIActivate_None;
    }

    if(view)
        FUNC0(view);
    view = NULL;

    FUNC4(FUNC1(doc_hwnd), "hwnd is destroyed\n");
    FUNC5(doc);
    FUNC4(!FUNC1(doc_hwnd), "hwnd is not destroyed\n");
}