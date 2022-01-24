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
typedef  int /*<<< orphan*/  ITfDocumentMgr ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FOCUS_IGNORE ; 
 void* FOCUS_SAVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* SINK_IGNORE ; 
 void* SINK_OPTIONAL ; 
 void* SINK_SAVE ; 
 void* SINK_UNEXPECTED ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_SHOWNORMAL ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WS_POPUP ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  g_tm ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (void**,char*) ; 
 int /*<<< orphan*/  FUNC14 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 void* test_ACP_GetSelection ; 
 void* test_ACP_GetStatus ; 
 void* test_ACP_RequestLock ; 
 int /*<<< orphan*/ * test_CurrentFocus ; 
 void* test_OnInitDocumentMgr ; 
 void* test_OnPopContext ; 
 void* test_OnPushContext ; 
 void* test_OnSetFocus ; 
 int /*<<< orphan*/ * test_PrevFocus ; 
 int /*<<< orphan*/  test_ShouldDeactivate ; 

__attribute__((used)) static void FUNC15(void)
{
    ITfDocumentMgr *dm1, *dm2, *olddm, *dmcheck, *dmorig;
    HWND wnd1, wnd2, wnd3;
    HRESULT hr;

    FUNC5(g_tm, &dmorig);
    test_CurrentFocus = NULL;
    test_PrevFocus = dmorig;
    test_OnSetFocus  = SINK_OPTIONAL; /* Doesn't always fire on Win7 */
    test_ACP_GetStatus = SINK_OPTIONAL;
    hr = FUNC6(g_tm,NULL);
    FUNC11(FUNC7(hr),"ITfThreadMgr_SetFocus failed\n");
    FUNC13(&test_OnSetFocus,"OnSetFocus");
    test_ACP_GetStatus = SINK_UNEXPECTED;
    FUNC2(dmorig);

    hr = FUNC4(g_tm,&dm1);
    FUNC11(FUNC7(hr),"CreateDocumentMgr failed\n");

    hr = FUNC4(g_tm,&dm2);
    FUNC11(FUNC7(hr),"CreateDocumentMgr failed\n");

    wnd1 = FUNC0("edit",NULL,WS_POPUP,0,0,200,60,NULL,NULL,NULL,NULL);
    FUNC11(wnd1!=NULL,"Unable to create window 1\n");
    wnd2 = FUNC0("edit",NULL,WS_POPUP,0,65,200,60,NULL,NULL,NULL,NULL);
    FUNC11(wnd2!=NULL,"Unable to create window 2\n");
    wnd3 = FUNC0("edit",NULL,WS_POPUP,0,130,200,60,NULL,NULL,NULL,NULL);
    FUNC11(wnd3!=NULL,"Unable to create window 3\n");

    FUNC12();

    test_OnInitDocumentMgr = SINK_OPTIONAL; /* Vista and greater */
    test_OnPushContext = SINK_OPTIONAL; /* Vista and greater */
    test_OnSetFocus = SINK_OPTIONAL; /* Win7 */
    test_PrevFocus = NULL;
    test_CurrentFocus = FOCUS_IGNORE;

    FUNC9(wnd1,SW_SHOWNORMAL);
    test_OnSetFocus = SINK_UNEXPECTED;
    FUNC8(wnd1);
    FUNC13(&test_OnInitDocumentMgr,"OnInitDocumentMgr");
    FUNC13(&test_OnPushContext,"OnPushContext");

    test_OnSetFocus  = SINK_OPTIONAL; /* Vista and greater */
    test_ACP_RequestLock = SINK_OPTIONAL; /* Win7 x64 */
    test_ACP_GetSelection = SINK_OPTIONAL; /* Win7 x64 */
    FUNC5(g_tm, &test_PrevFocus);
    test_CurrentFocus = FOCUS_IGNORE; /* This is a default system context */
    FUNC12();
    FUNC13(&test_OnSetFocus,"OnSetFocus");
    test_ACP_RequestLock = SINK_UNEXPECTED;
    test_ACP_GetSelection = SINK_UNEXPECTED;

    test_CurrentFocus = dm1;
    test_PrevFocus = FOCUS_IGNORE;
    test_OnSetFocus  = SINK_OPTIONAL;
    test_ShouldDeactivate = TRUE;
    hr = FUNC3(g_tm,wnd1,dm1,&olddm);
    FUNC11(FUNC7(hr),"AssociateFocus failed\n");
    FUNC13(&test_OnSetFocus,"OnSetFocus");
    test_ShouldDeactivate = FALSE;

    FUNC12();

    FUNC5(g_tm, &dmcheck);
    FUNC11(dmcheck == dm1 || FUNC10(dmcheck == dmorig /* Win7+ */), "Expected DocumentMgr not focused\n");
    FUNC2(dmcheck);

    /* We need to explicitly set focus on Win7+ */
    test_CurrentFocus = dm1;
    test_PrevFocus = FOCUS_IGNORE;
    test_OnSetFocus = SINK_OPTIONAL; /* Doesn't always fire on Win7+ */
    FUNC6(g_tm, dm1);
    FUNC13(&test_OnSetFocus, "OnSetFocus");

    hr = FUNC3(g_tm,wnd2,dm2,&olddm);
    FUNC11(FUNC7(hr),"AssociateFocus failed\n");
    FUNC12();
    FUNC5(g_tm, &dmcheck);
    FUNC11(dmcheck == dm1, "Expected DocumentMgr not focused\n");
    FUNC2(dmcheck);

    hr = FUNC3(g_tm,wnd3,dm2,&olddm);
    FUNC11(FUNC7(hr),"AssociateFocus failed\n");
    FUNC12();
    FUNC5(g_tm, &dmcheck);
    FUNC11(dmcheck == dm1, "Expected DocumentMgr not focused\n");
    FUNC2(dmcheck);

    test_CurrentFocus = FOCUS_SAVE;
    test_PrevFocus = FOCUS_SAVE;
    test_OnSetFocus = SINK_SAVE;
    test_ShouldDeactivate = TRUE; /* win 8/10 */
    FUNC9(wnd2,SW_SHOWNORMAL);
    FUNC8(wnd2);
    FUNC14(&test_OnSetFocus,dm1,dm2,"OnSetFocus");
    test_CurrentFocus = FOCUS_IGNORE; /* occasional wine race */
    test_PrevFocus = FOCUS_IGNORE; /* occasional wine race */
    test_OnSetFocus = SINK_IGNORE; /* occasional wine race */
    test_ShouldDeactivate = FALSE;
    FUNC12();

    FUNC9(wnd3,SW_SHOWNORMAL);
    FUNC8(wnd3);
    FUNC12();

    test_CurrentFocus = FOCUS_SAVE;
    test_PrevFocus = FOCUS_SAVE;
    test_OnSetFocus = SINK_SAVE;
    FUNC8(wnd1);
    FUNC12();
    FUNC14(&test_OnSetFocus,dm2,dm1,"OnSetFocus");

    hr = FUNC3(g_tm,wnd3,NULL,&olddm);
    FUNC11(FUNC7(hr),"AssociateFocus failed\n");
    FUNC11(olddm == dm2, "incorrect old DocumentMgr returned\n");
    FUNC2(olddm);

    test_CurrentFocus = dmorig;
    test_PrevFocus = dm1;
    test_OnSetFocus  = SINK_OPTIONAL; /* Doesn't always fire on Win7+ */
    test_ACP_GetStatus = SINK_IGNORE;
    FUNC6(g_tm,dmorig);
    FUNC13(&test_OnSetFocus,"OnSetFocus");

    test_CurrentFocus = FOCUS_SAVE;
    test_PrevFocus = FOCUS_SAVE;
    test_OnSetFocus = SINK_SAVE;
    FUNC8(wnd3);
    FUNC12();
    FUNC14(&test_OnSetFocus,dmorig,FOCUS_IGNORE,"OnSetFocus"); /* CurrentFocus NULL on XP, system default on Vista */

    hr = FUNC3(g_tm,wnd2,NULL,&olddm);
    FUNC11(FUNC7(hr),"AssociateFocus failed\n");
    FUNC11(olddm == dm2, "incorrect old DocumentMgr returned\n");
    FUNC2(olddm);
    hr = FUNC3(g_tm,wnd1,NULL,&olddm);
    FUNC11(FUNC7(hr),"AssociateFocus failed\n");
    FUNC11(olddm == dm1, "incorrect old DocumentMgr returned\n");
    FUNC2(olddm);

    test_OnSetFocus = SINK_IGNORE; /* OnSetFocus fires a couple of times on Win7 */
    test_CurrentFocus = FOCUS_IGNORE;
    test_PrevFocus = FOCUS_IGNORE;
    FUNC8(wnd2);
    FUNC12();
    FUNC8(wnd1);
    FUNC12();
    test_OnSetFocus = SINK_UNEXPECTED;

    FUNC2(dm1);
    FUNC2(dm2);

    test_CurrentFocus = dmorig;
    test_PrevFocus = FOCUS_IGNORE;
    test_OnSetFocus  = SINK_OPTIONAL;
    test_ACP_GetStatus = SINK_IGNORE;
    FUNC6(g_tm,dmorig);
    FUNC13(&test_OnSetFocus,"OnSetFocus");

    test_OnSetFocus = SINK_IGNORE; /* OnSetFocus fires a couple of times on Win7 */
    test_CurrentFocus = FOCUS_IGNORE;
    test_PrevFocus = FOCUS_IGNORE;
    FUNC1(wnd1);
    FUNC1(wnd2);
    test_OnPopContext = SINK_OPTIONAL; /* Vista and greater */
    test_OnSetFocus = SINK_OPTIONAL; /* Vista and greater */
    FUNC5(g_tm, &test_PrevFocus);
    test_CurrentFocus = NULL;
    test_ShouldDeactivate = TRUE; /* Win7 */
    FUNC1(wnd3);
    test_ShouldDeactivate = FALSE;
    FUNC13(&test_OnSetFocus,"OnSetFocus");
    FUNC13(&test_OnPopContext,"OnPopContext");
}