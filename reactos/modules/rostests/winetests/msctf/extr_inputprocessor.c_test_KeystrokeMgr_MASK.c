#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char uVKey; int /*<<< orphan*/  uModifiers; } ;
typedef  TYPE_1__ TF_PRESERVEDKEY ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  ITfKeystrokeMgr ;
typedef  int /*<<< orphan*/  ITfKeyEventSink ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_PreservedKey ; 
 scalar_t__ CONNECT_E_ADVISELIMIT ; 
 scalar_t__ CONNECT_E_NOCONNECTION ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  IID_ITfKeystrokeMgr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  SINK_EXPECTED ; 
 int FUNC9 (scalar_t__) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 scalar_t__ TF_E_ALREADY_EXISTS ; 
 int /*<<< orphan*/  TF_MOD_SHIFT ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  cid ; 
 int /*<<< orphan*/  g_tm ; 
 int /*<<< orphan*/  FUNC10 (int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  test_KEV_OnSetFocus ; 
 int /*<<< orphan*/  tid ; 

__attribute__((used)) static void FUNC12(void)
{
    ITfKeystrokeMgr *keymgr= NULL;
    HRESULT hr;
    TF_PRESERVEDKEY tfpk;
    BOOL preserved;
    ITfKeyEventSink *sink = NULL;

    FUNC8(&sink);

    hr = FUNC7(g_tm, &IID_ITfKeystrokeMgr, (LPVOID*)&keymgr);
    FUNC10(FUNC9(hr),"Failed to get IID_ITfKeystrokeMgr for ThreadMgr\n");

    tfpk.uVKey = 'A';
    tfpk.uModifiers = TF_MOD_SHIFT;

    test_KEV_OnSetFocus = SINK_EXPECTED;
    hr = FUNC1(keymgr,tid,sink,TRUE);
    FUNC10(FUNC9(hr),"ITfKeystrokeMgr_AdviseKeyEventSink failed\n");
    FUNC11(&test_KEV_OnSetFocus,"KeyEventSink_OnSetFocus");
    hr = FUNC1(keymgr,tid,sink,TRUE);
    FUNC10(hr == CONNECT_E_ADVISELIMIT,"Wrong return, expected CONNECT_E_ADVISELIMIT\n");
    hr = FUNC1(keymgr,cid,sink,TRUE);
    FUNC10(hr == E_INVALIDARG,"Wrong return, expected E_INVALIDARG\n");

    hr =FUNC3(keymgr, 0, &CLSID_PreservedKey, &tfpk, NULL, 0);
    FUNC10(hr==E_INVALIDARG,"ITfKeystrokeMgr_PreserveKey improperly succeeded\n");

    hr =FUNC3(keymgr, tid, &CLSID_PreservedKey, &tfpk, NULL, 0);
    FUNC10(FUNC9(hr),"ITfKeystrokeMgr_PreserveKey failed\n");

    hr =FUNC3(keymgr, tid, &CLSID_PreservedKey, &tfpk, NULL, 0);
    FUNC10(hr == TF_E_ALREADY_EXISTS,"ITfKeystrokeMgr_PreserveKey improperly succeeded\n");

    preserved = FALSE;
    hr = FUNC2(keymgr, &CLSID_PreservedKey, &tfpk, &preserved);
    FUNC10(hr == S_OK, "ITfKeystrokeMgr_IsPreservedKey failed\n");
    if (hr == S_OK) FUNC10(preserved == TRUE,"misreporting preserved key\n");

    hr = FUNC6(keymgr, &CLSID_PreservedKey,&tfpk);
    FUNC10(FUNC9(hr),"ITfKeystrokeMgr_UnpreserveKey failed\n");

    hr = FUNC2(keymgr, &CLSID_PreservedKey, &tfpk, &preserved);
    FUNC10(hr == S_FALSE, "ITfKeystrokeMgr_IsPreservedKey failed\n");
    if (hr == S_FALSE) FUNC10(preserved == FALSE,"misreporting preserved key\n");

    hr = FUNC6(keymgr, &CLSID_PreservedKey,&tfpk);
    FUNC10(hr==CONNECT_E_NOCONNECTION,"ITfKeystrokeMgr_UnpreserveKey improperly succeeded\n");

    hr = FUNC5(keymgr,tid);
    FUNC10(FUNC9(hr),"ITfKeystrokeMgr_UnadviseKeyEventSink failed\n");

    FUNC4(keymgr);
    FUNC0(sink);
}