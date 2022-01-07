
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IOleCommandTarget ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ BOOL ;


 int BindToStorage ;
 int CGID_MSHTML ;
 int CHECK_CALLED (int ) ;
 int CHECK_CALLED_BROKEN (int ) ;
 int CLEAR_CALLED (int ) ;
 int EXPECT_SETTITLE ;
 int EXPECT_UPDATEUI ;
 int Exec_ShellDocView_37 ;
 int Exec_ShellDocView_84 ;
 scalar_t__ FAILED (scalar_t__) ;
 int GetClassID ;
 int GetDisplayName ;
 int GetHostInfo ;
 int HideUI ;
 int IDM_EDITMODE ;
 int IID_IOleCommandTarget ;
 scalar_t__ IOleCommandTarget_Exec (int *,int *,int ,int ,int *,int *) ;
 int IOleCommandTarget_Release (int *) ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 int InPlaceFrame_SetBorderSpace ;
 int InPlaceUIWindow_SetActiveObject ;
 int Invoke_AMBIENT_OFFLINEIFNOTCONNECTED ;
 int Invoke_AMBIENT_SILENT ;
 int Invoke_OnReadyStateChange_Loading ;
 int IsSystemMoniker ;
 int LD_DOLOAD ;
 int OLECMDEXECOPT_DODEFAULT ;
 int OnChanged_READYSTATE ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 int SetStatusText ;
 int ShowUI ;
 void* TRUE ;
 void* editmode ;
 int * expect_status_text ;
 int load_state ;
 int ok (int,char*,scalar_t__) ;
 void* readystate_set_loading ;
 int test_timer (int) ;

__attribute__((used)) static void test_exec_editmode(IUnknown *unk, BOOL loaded)
{
    IOleCommandTarget *cmdtrg;
    HRESULT hres;

    hres = IUnknown_QueryInterface(unk, &IID_IOleCommandTarget, (void**)&cmdtrg);
    ok(hres == S_OK, "QueryInterface(IID_IOleCommandTarget) failed: %08x\n", hres);
    if(FAILED(hres))
        return;

    editmode = TRUE;

    if(loaded) {
        load_state = LD_DOLOAD;
        SET_EXPECT(GetClassID);
    }
    SET_EXPECT(SetStatusText);
    SET_EXPECT(Exec_ShellDocView_37);
    SET_EXPECT(GetHostInfo);
    if(loaded)
        SET_EXPECT(GetDisplayName);
    SET_EXPECT(Invoke_AMBIENT_SILENT);
    SET_EXPECT(Invoke_AMBIENT_OFFLINEIFNOTCONNECTED);
    SET_EXPECT(OnChanged_READYSTATE);
    SET_EXPECT(Invoke_OnReadyStateChange_Loading);
    SET_EXPECT(IsSystemMoniker);
    SET_EXPECT(Exec_ShellDocView_84);
    if(loaded)
        SET_EXPECT(BindToStorage);
    SET_EXPECT(InPlaceUIWindow_SetActiveObject);
    SET_EXPECT(HideUI);
    SET_EXPECT(ShowUI);
    SET_EXPECT(InPlaceFrame_SetBorderSpace);

    expect_status_text = ((void*)0);
    readystate_set_loading = TRUE;

    hres = IOleCommandTarget_Exec(cmdtrg, &CGID_MSHTML, IDM_EDITMODE,
            OLECMDEXECOPT_DODEFAULT, ((void*)0), ((void*)0));
    ok(hres == S_OK, "Exec failed: %08x\n", hres);

    if(loaded)
        CHECK_CALLED(GetClassID);
    CHECK_CALLED(SetStatusText);
    CHECK_CALLED(Exec_ShellDocView_37);
    CHECK_CALLED(GetHostInfo);
    if(loaded)
        CHECK_CALLED(GetDisplayName);
    CHECK_CALLED(Invoke_AMBIENT_SILENT);
    CHECK_CALLED(Invoke_AMBIENT_OFFLINEIFNOTCONNECTED);
    CHECK_CALLED(OnChanged_READYSTATE);
    CHECK_CALLED(Invoke_OnReadyStateChange_Loading);
    CLEAR_CALLED(IsSystemMoniker);
    CHECK_CALLED_BROKEN(Exec_ShellDocView_84);
    if(loaded)
        CHECK_CALLED(BindToStorage);
    CHECK_CALLED(InPlaceUIWindow_SetActiveObject);
    CHECK_CALLED(HideUI);
    CHECK_CALLED(ShowUI);
    CHECK_CALLED(InPlaceFrame_SetBorderSpace);

    test_timer(EXPECT_UPDATEUI|EXPECT_SETTITLE);

    IOleCommandTarget_Release(cmdtrg);

    hres = IOleCommandTarget_Exec(cmdtrg, &CGID_MSHTML, IDM_EDITMODE,
            OLECMDEXECOPT_DODEFAULT, ((void*)0), ((void*)0));
    ok(hres == S_OK, "Exec failed: %08x\n", hres);
}
