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
typedef  int /*<<< orphan*/  IOleObject ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  int /*<<< orphan*/  IAdviseSink ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  AdviseSink ; 
 int /*<<< orphan*/  Advise_Close ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CLIENTSITE_DONTSET ; 
 int CLIENTSITE_EXPECTPATH ; 
 int CLIENTSITE_SETNULL ; 
 int /*<<< orphan*/  CustomDocHostUIHandler ; 
 int DWL_TRYCSS ; 
 int DWL_VERBDONE ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IOleObject ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LD_DOLOAD ; 
 int /*<<< orphan*/  OLECMDF_SUPPORTED ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * doc_unk ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  load_from_stream ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 
 int /*<<< orphan*/ * view ; 

__attribute__((used)) static void FUNC27(void)
{
    IHTMLDocument2 *doc;
    IOleObject *oleobj;
    DWORD conn;
    HRESULT hres;

    FUNC26("Testing HTMLDocument (IPersistStreamInit)...\n");

    FUNC7(LD_DOLOAD);
    load_from_stream = TRUE;

    doc = FUNC6();
    doc_unk = (IUnknown*)doc;

    hres = FUNC1(doc, &IID_IOleObject, (void**)&oleobj);
    FUNC8(hres == S_OK, "Could not get IOleObject: %08x\n", hres);

    hres = FUNC3(oleobj, (IAdviseSink*)&AdviseSink, &conn);
    FUNC8(hres == S_OK, "Advise failed: %08x\n", hres);

    FUNC25((IUnknown*)doc);
    FUNC17(doc, S_FALSE);
    FUNC22(doc);
    FUNC13(doc);
    FUNC19(doc, FALSE);
    FUNC11(oleobj, CLIENTSITE_EXPECTPATH);
    FUNC19(doc, TRUE);
    FUNC14(oleobj);
    FUNC18(doc, OLECMDF_SUPPORTED);

    FUNC15((IUnknown*)doc, NULL, NULL, FALSE);
    FUNC20(doc);
    FUNC23(DWL_VERBDONE|DWL_TRYCSS);
    FUNC18(doc, OLECMDF_SUPPORTED);

    FUNC21();
    FUNC16(doc, TRUE);
    FUNC5(Advise_Close);
    FUNC12(doc, TRUE);
    FUNC0(Advise_Close);
    FUNC24(doc, FALSE);
    FUNC17(doc, S_FALSE);

    FUNC10(doc, &CustomDocHostUIHandler);
    FUNC11(oleobj, CLIENTSITE_SETNULL);
    FUNC24(doc, TRUE);
    FUNC11(oleobj, CLIENTSITE_SETNULL|CLIENTSITE_DONTSET);
    FUNC24(doc, TRUE);
    FUNC10(doc, NULL);
    FUNC11(oleobj, CLIENTSITE_SETNULL|CLIENTSITE_DONTSET);

    FUNC4(oleobj);
    if(view) {
        FUNC2(view);
        view = NULL;
    }

    FUNC9(doc);
}