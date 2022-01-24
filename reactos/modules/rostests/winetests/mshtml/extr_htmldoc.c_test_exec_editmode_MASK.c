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
typedef  int /*<<< orphan*/  IOleCommandTarget ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BindToStorage ; 
 int /*<<< orphan*/  CGID_MSHTML ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int EXPECT_SETTITLE ; 
 int EXPECT_UPDATEUI ; 
 int /*<<< orphan*/  Exec_ShellDocView_37 ; 
 int /*<<< orphan*/  Exec_ShellDocView_84 ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  GetClassID ; 
 int /*<<< orphan*/  GetDisplayName ; 
 int /*<<< orphan*/  GetHostInfo ; 
 int /*<<< orphan*/  HideUI ; 
 int /*<<< orphan*/  IDM_EDITMODE ; 
 int /*<<< orphan*/  IID_IOleCommandTarget ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  InPlaceFrame_SetBorderSpace ; 
 int /*<<< orphan*/  InPlaceUIWindow_SetActiveObject ; 
 int /*<<< orphan*/  Invoke_AMBIENT_OFFLINEIFNOTCONNECTED ; 
 int /*<<< orphan*/  Invoke_AMBIENT_SILENT ; 
 int /*<<< orphan*/  Invoke_OnReadyStateChange_Loading ; 
 int /*<<< orphan*/  IsSystemMoniker ; 
 int /*<<< orphan*/  LD_DOLOAD ; 
 int /*<<< orphan*/  OLECMDEXECOPT_DODEFAULT ; 
 int /*<<< orphan*/  OnChanged_READYSTATE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  SetStatusText ; 
 int /*<<< orphan*/  ShowUI ; 
 void* TRUE ; 
 void* editmode ; 
 int /*<<< orphan*/ * expect_status_text ; 
 int /*<<< orphan*/  load_state ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__) ; 
 void* readystate_set_loading ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(IUnknown *unk, BOOL loaded)
{
    IOleCommandTarget *cmdtrg;
    HRESULT hres;

    hres = FUNC6(unk, &IID_IOleCommandTarget, (void**)&cmdtrg);
    FUNC8(hres == S_OK, "QueryInterface(IID_IOleCommandTarget) failed: %08x\n", hres);
    if(FUNC3(hres))
        return;

    editmode = TRUE;

    if(loaded) {
        load_state = LD_DOLOAD;
        FUNC7(GetClassID);
    }
    FUNC7(SetStatusText);
    FUNC7(Exec_ShellDocView_37);
    FUNC7(GetHostInfo);
    if(loaded)
        FUNC7(GetDisplayName);
    FUNC7(Invoke_AMBIENT_SILENT);
    FUNC7(Invoke_AMBIENT_OFFLINEIFNOTCONNECTED);
    FUNC7(OnChanged_READYSTATE);
    FUNC7(Invoke_OnReadyStateChange_Loading);
    FUNC7(IsSystemMoniker);
    FUNC7(Exec_ShellDocView_84);
    if(loaded)
        FUNC7(BindToStorage);
    FUNC7(InPlaceUIWindow_SetActiveObject);
    FUNC7(HideUI);
    FUNC7(ShowUI);
    FUNC7(InPlaceFrame_SetBorderSpace);

    expect_status_text = NULL;
    readystate_set_loading = TRUE;

    hres = FUNC4(cmdtrg, &CGID_MSHTML, IDM_EDITMODE,
            OLECMDEXECOPT_DODEFAULT, NULL, NULL);
    FUNC8(hres == S_OK, "Exec failed: %08x\n", hres);

    if(loaded)
        FUNC0(GetClassID);
    FUNC0(SetStatusText);
    FUNC0(Exec_ShellDocView_37);
    FUNC0(GetHostInfo);
    if(loaded)
        FUNC0(GetDisplayName);
    FUNC0(Invoke_AMBIENT_SILENT);
    FUNC0(Invoke_AMBIENT_OFFLINEIFNOTCONNECTED);
    FUNC0(OnChanged_READYSTATE);
    FUNC0(Invoke_OnReadyStateChange_Loading);
    FUNC2(IsSystemMoniker); /* IE7 */
    FUNC1(Exec_ShellDocView_84);
    if(loaded)
        FUNC0(BindToStorage);
    FUNC0(InPlaceUIWindow_SetActiveObject);
    FUNC0(HideUI);
    FUNC0(ShowUI);
    FUNC0(InPlaceFrame_SetBorderSpace);

    FUNC9(EXPECT_UPDATEUI|EXPECT_SETTITLE);

    FUNC5(cmdtrg);

    hres = FUNC4(cmdtrg, &CGID_MSHTML, IDM_EDITMODE,
            OLECMDEXECOPT_DODEFAULT, NULL, NULL);
    FUNC8(hres == S_OK, "Exec failed: %08x\n", hres);
}