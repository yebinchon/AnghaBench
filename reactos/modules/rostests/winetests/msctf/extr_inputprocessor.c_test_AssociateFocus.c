
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ITfDocumentMgr ;
typedef int * HWND ;
typedef int HRESULT ;


 int * CreateWindowA (char*,int *,int ,int ,int,int,int,int *,int *,int *,int *) ;
 int DestroyWindow (int *) ;
 int FALSE ;
 int * FOCUS_IGNORE ;
 void* FOCUS_SAVE ;
 int ITfDocumentMgr_Release (int *) ;
 int ITfThreadMgr_AssociateFocus (int ,int *,int *,int **) ;
 int ITfThreadMgr_CreateDocumentMgr (int ,int **) ;
 int ITfThreadMgr_GetFocus (int ,int **) ;
 int ITfThreadMgr_SetFocus (int ,int *) ;
 void* SINK_IGNORE ;
 void* SINK_OPTIONAL ;
 void* SINK_SAVE ;
 void* SINK_UNEXPECTED ;
 int SUCCEEDED (int ) ;
 int SW_SHOWNORMAL ;
 int SetFocus (int *) ;
 int ShowWindow (int *,int ) ;
 int TRUE ;
 int WS_POPUP ;
 scalar_t__ broken (int) ;
 int g_tm ;
 int ok (int,char*) ;
 int processPendingMessages () ;
 int sink_check_ok (void**,char*) ;
 int sink_check_saved (void**,int *,int *,char*) ;
 void* test_ACP_GetSelection ;
 void* test_ACP_GetStatus ;
 void* test_ACP_RequestLock ;
 int * test_CurrentFocus ;
 void* test_OnInitDocumentMgr ;
 void* test_OnPopContext ;
 void* test_OnPushContext ;
 void* test_OnSetFocus ;
 int * test_PrevFocus ;
 int test_ShouldDeactivate ;

__attribute__((used)) static void test_AssociateFocus(void)
{
    ITfDocumentMgr *dm1, *dm2, *olddm, *dmcheck, *dmorig;
    HWND wnd1, wnd2, wnd3;
    HRESULT hr;

    ITfThreadMgr_GetFocus(g_tm, &dmorig);
    test_CurrentFocus = ((void*)0);
    test_PrevFocus = dmorig;
    test_OnSetFocus = SINK_OPTIONAL;
    test_ACP_GetStatus = SINK_OPTIONAL;
    hr = ITfThreadMgr_SetFocus(g_tm,((void*)0));
    ok(SUCCEEDED(hr),"ITfThreadMgr_SetFocus failed\n");
    sink_check_ok(&test_OnSetFocus,"OnSetFocus");
    test_ACP_GetStatus = SINK_UNEXPECTED;
    ITfDocumentMgr_Release(dmorig);

    hr = ITfThreadMgr_CreateDocumentMgr(g_tm,&dm1);
    ok(SUCCEEDED(hr),"CreateDocumentMgr failed\n");

    hr = ITfThreadMgr_CreateDocumentMgr(g_tm,&dm2);
    ok(SUCCEEDED(hr),"CreateDocumentMgr failed\n");

    wnd1 = CreateWindowA("edit",((void*)0),WS_POPUP,0,0,200,60,((void*)0),((void*)0),((void*)0),((void*)0));
    ok(wnd1!=((void*)0),"Unable to create window 1\n");
    wnd2 = CreateWindowA("edit",((void*)0),WS_POPUP,0,65,200,60,((void*)0),((void*)0),((void*)0),((void*)0));
    ok(wnd2!=((void*)0),"Unable to create window 2\n");
    wnd3 = CreateWindowA("edit",((void*)0),WS_POPUP,0,130,200,60,((void*)0),((void*)0),((void*)0),((void*)0));
    ok(wnd3!=((void*)0),"Unable to create window 3\n");

    processPendingMessages();

    test_OnInitDocumentMgr = SINK_OPTIONAL;
    test_OnPushContext = SINK_OPTIONAL;
    test_OnSetFocus = SINK_OPTIONAL;
    test_PrevFocus = ((void*)0);
    test_CurrentFocus = FOCUS_IGNORE;

    ShowWindow(wnd1,SW_SHOWNORMAL);
    test_OnSetFocus = SINK_UNEXPECTED;
    SetFocus(wnd1);
    sink_check_ok(&test_OnInitDocumentMgr,"OnInitDocumentMgr");
    sink_check_ok(&test_OnPushContext,"OnPushContext");

    test_OnSetFocus = SINK_OPTIONAL;
    test_ACP_RequestLock = SINK_OPTIONAL;
    test_ACP_GetSelection = SINK_OPTIONAL;
    ITfThreadMgr_GetFocus(g_tm, &test_PrevFocus);
    test_CurrentFocus = FOCUS_IGNORE;
    processPendingMessages();
    sink_check_ok(&test_OnSetFocus,"OnSetFocus");
    test_ACP_RequestLock = SINK_UNEXPECTED;
    test_ACP_GetSelection = SINK_UNEXPECTED;

    test_CurrentFocus = dm1;
    test_PrevFocus = FOCUS_IGNORE;
    test_OnSetFocus = SINK_OPTIONAL;
    test_ShouldDeactivate = TRUE;
    hr = ITfThreadMgr_AssociateFocus(g_tm,wnd1,dm1,&olddm);
    ok(SUCCEEDED(hr),"AssociateFocus failed\n");
    sink_check_ok(&test_OnSetFocus,"OnSetFocus");
    test_ShouldDeactivate = FALSE;

    processPendingMessages();

    ITfThreadMgr_GetFocus(g_tm, &dmcheck);
    ok(dmcheck == dm1 || broken(dmcheck == dmorig ), "Expected DocumentMgr not focused\n");
    ITfDocumentMgr_Release(dmcheck);


    test_CurrentFocus = dm1;
    test_PrevFocus = FOCUS_IGNORE;
    test_OnSetFocus = SINK_OPTIONAL;
    ITfThreadMgr_SetFocus(g_tm, dm1);
    sink_check_ok(&test_OnSetFocus, "OnSetFocus");

    hr = ITfThreadMgr_AssociateFocus(g_tm,wnd2,dm2,&olddm);
    ok(SUCCEEDED(hr),"AssociateFocus failed\n");
    processPendingMessages();
    ITfThreadMgr_GetFocus(g_tm, &dmcheck);
    ok(dmcheck == dm1, "Expected DocumentMgr not focused\n");
    ITfDocumentMgr_Release(dmcheck);

    hr = ITfThreadMgr_AssociateFocus(g_tm,wnd3,dm2,&olddm);
    ok(SUCCEEDED(hr),"AssociateFocus failed\n");
    processPendingMessages();
    ITfThreadMgr_GetFocus(g_tm, &dmcheck);
    ok(dmcheck == dm1, "Expected DocumentMgr not focused\n");
    ITfDocumentMgr_Release(dmcheck);

    test_CurrentFocus = FOCUS_SAVE;
    test_PrevFocus = FOCUS_SAVE;
    test_OnSetFocus = SINK_SAVE;
    test_ShouldDeactivate = TRUE;
    ShowWindow(wnd2,SW_SHOWNORMAL);
    SetFocus(wnd2);
    sink_check_saved(&test_OnSetFocus,dm1,dm2,"OnSetFocus");
    test_CurrentFocus = FOCUS_IGNORE;
    test_PrevFocus = FOCUS_IGNORE;
    test_OnSetFocus = SINK_IGNORE;
    test_ShouldDeactivate = FALSE;
    processPendingMessages();

    ShowWindow(wnd3,SW_SHOWNORMAL);
    SetFocus(wnd3);
    processPendingMessages();

    test_CurrentFocus = FOCUS_SAVE;
    test_PrevFocus = FOCUS_SAVE;
    test_OnSetFocus = SINK_SAVE;
    SetFocus(wnd1);
    processPendingMessages();
    sink_check_saved(&test_OnSetFocus,dm2,dm1,"OnSetFocus");

    hr = ITfThreadMgr_AssociateFocus(g_tm,wnd3,((void*)0),&olddm);
    ok(SUCCEEDED(hr),"AssociateFocus failed\n");
    ok(olddm == dm2, "incorrect old DocumentMgr returned\n");
    ITfDocumentMgr_Release(olddm);

    test_CurrentFocus = dmorig;
    test_PrevFocus = dm1;
    test_OnSetFocus = SINK_OPTIONAL;
    test_ACP_GetStatus = SINK_IGNORE;
    ITfThreadMgr_SetFocus(g_tm,dmorig);
    sink_check_ok(&test_OnSetFocus,"OnSetFocus");

    test_CurrentFocus = FOCUS_SAVE;
    test_PrevFocus = FOCUS_SAVE;
    test_OnSetFocus = SINK_SAVE;
    SetFocus(wnd3);
    processPendingMessages();
    sink_check_saved(&test_OnSetFocus,dmorig,FOCUS_IGNORE,"OnSetFocus");

    hr = ITfThreadMgr_AssociateFocus(g_tm,wnd2,((void*)0),&olddm);
    ok(SUCCEEDED(hr),"AssociateFocus failed\n");
    ok(olddm == dm2, "incorrect old DocumentMgr returned\n");
    ITfDocumentMgr_Release(olddm);
    hr = ITfThreadMgr_AssociateFocus(g_tm,wnd1,((void*)0),&olddm);
    ok(SUCCEEDED(hr),"AssociateFocus failed\n");
    ok(olddm == dm1, "incorrect old DocumentMgr returned\n");
    ITfDocumentMgr_Release(olddm);

    test_OnSetFocus = SINK_IGNORE;
    test_CurrentFocus = FOCUS_IGNORE;
    test_PrevFocus = FOCUS_IGNORE;
    SetFocus(wnd2);
    processPendingMessages();
    SetFocus(wnd1);
    processPendingMessages();
    test_OnSetFocus = SINK_UNEXPECTED;

    ITfDocumentMgr_Release(dm1);
    ITfDocumentMgr_Release(dm2);

    test_CurrentFocus = dmorig;
    test_PrevFocus = FOCUS_IGNORE;
    test_OnSetFocus = SINK_OPTIONAL;
    test_ACP_GetStatus = SINK_IGNORE;
    ITfThreadMgr_SetFocus(g_tm,dmorig);
    sink_check_ok(&test_OnSetFocus,"OnSetFocus");

    test_OnSetFocus = SINK_IGNORE;
    test_CurrentFocus = FOCUS_IGNORE;
    test_PrevFocus = FOCUS_IGNORE;
    DestroyWindow(wnd1);
    DestroyWindow(wnd2);
    test_OnPopContext = SINK_OPTIONAL;
    test_OnSetFocus = SINK_OPTIONAL;
    ITfThreadMgr_GetFocus(g_tm, &test_PrevFocus);
    test_CurrentFocus = ((void*)0);
    test_ShouldDeactivate = TRUE;
    DestroyWindow(wnd3);
    test_ShouldDeactivate = FALSE;
    sink_check_ok(&test_OnSetFocus,"OnSetFocus");
    sink_check_ok(&test_OnPopContext,"OnPopContext");
}
