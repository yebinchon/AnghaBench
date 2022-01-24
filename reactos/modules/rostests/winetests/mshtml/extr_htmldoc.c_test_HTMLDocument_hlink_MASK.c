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
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CustomDocHostUIHandler ; 
 int DWL_CSS ; 
 int DWL_TRYCSS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HTTP_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LD_DOLOAD ; 
 int /*<<< orphan*/  Moniker ; 
 int /*<<< orphan*/  OLECMDF_SUPPORTED ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * doc_unk ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipsex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  status_code ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/ * view ; 

__attribute__((used)) static void FUNC19(DWORD status)
{
    IHTMLDocument2 *doc;

    FUNC18("Testing HTMLDocument (hlink)...\n");

    FUNC2(LD_DOLOAD);
    ipsex = TRUE;

    doc = FUNC1();
    doc_unk = (IUnknown*)doc;

    FUNC4(doc, &CustomDocHostUIHandler);
    FUNC13(doc);
    FUNC6(doc);
    FUNC7((IUnknown*)doc, NULL, NULL, FALSE);
    FUNC12(doc, &Moniker);
    FUNC11(doc);

    status_code = status;
    FUNC16(DWL_CSS|DWL_TRYCSS);
    status_code = HTTP_STATUS_OK;

    FUNC9(doc, S_FALSE);
    FUNC10(doc, OLECMDF_SUPPORTED);

    FUNC17(doc);
    FUNC14(doc, TRUE);
    FUNC8(doc, TRUE);
    FUNC5(doc, FALSE);
    FUNC9(doc, S_FALSE);
    FUNC7((IUnknown*)doc, &Moniker, NULL, FALSE);
    FUNC15(doc);
    FUNC7((IUnknown*)doc, &Moniker, NULL, FALSE);

    if(view)
        FUNC0(view);
    view = NULL;

    FUNC3(doc);
}