
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char uVKey; int uModifiers; } ;
typedef TYPE_1__ TF_PRESERVEDKEY ;
typedef int LPVOID ;
typedef int ITfKeystrokeMgr ;
typedef int ITfKeyEventSink ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ BOOL ;


 int CLSID_PreservedKey ;
 scalar_t__ CONNECT_E_ADVISELIMIT ;
 scalar_t__ CONNECT_E_NOCONNECTION ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ FALSE ;
 int IID_ITfKeystrokeMgr ;
 int ITfKeyEventSink_Release (int *) ;
 scalar_t__ ITfKeystrokeMgr_AdviseKeyEventSink (int *,int ,int *,scalar_t__) ;
 scalar_t__ ITfKeystrokeMgr_IsPreservedKey (int *,int *,TYPE_1__*,scalar_t__*) ;
 scalar_t__ ITfKeystrokeMgr_PreserveKey (int *,int ,int *,TYPE_1__*,int *,int ) ;
 int ITfKeystrokeMgr_Release (int *) ;
 scalar_t__ ITfKeystrokeMgr_UnadviseKeyEventSink (int *,int ) ;
 scalar_t__ ITfKeystrokeMgr_UnpreserveKey (int *,int *,TYPE_1__*) ;
 scalar_t__ ITfThreadMgr_QueryInterface (int ,int *,int *) ;
 int KeyEventSink_Constructor (int **) ;
 int SINK_EXPECTED ;
 int SUCCEEDED (scalar_t__) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 scalar_t__ TF_E_ALREADY_EXISTS ;
 int TF_MOD_SHIFT ;
 scalar_t__ TRUE ;
 int cid ;
 int g_tm ;
 int ok (int,char*) ;
 int sink_check_ok (int *,char*) ;
 int test_KEV_OnSetFocus ;
 int tid ;

__attribute__((used)) static void test_KeystrokeMgr(void)
{
    ITfKeystrokeMgr *keymgr= ((void*)0);
    HRESULT hr;
    TF_PRESERVEDKEY tfpk;
    BOOL preserved;
    ITfKeyEventSink *sink = ((void*)0);

    KeyEventSink_Constructor(&sink);

    hr = ITfThreadMgr_QueryInterface(g_tm, &IID_ITfKeystrokeMgr, (LPVOID*)&keymgr);
    ok(SUCCEEDED(hr),"Failed to get IID_ITfKeystrokeMgr for ThreadMgr\n");

    tfpk.uVKey = 'A';
    tfpk.uModifiers = TF_MOD_SHIFT;

    test_KEV_OnSetFocus = SINK_EXPECTED;
    hr = ITfKeystrokeMgr_AdviseKeyEventSink(keymgr,tid,sink,TRUE);
    ok(SUCCEEDED(hr),"ITfKeystrokeMgr_AdviseKeyEventSink failed\n");
    sink_check_ok(&test_KEV_OnSetFocus,"KeyEventSink_OnSetFocus");
    hr = ITfKeystrokeMgr_AdviseKeyEventSink(keymgr,tid,sink,TRUE);
    ok(hr == CONNECT_E_ADVISELIMIT,"Wrong return, expected CONNECT_E_ADVISELIMIT\n");
    hr = ITfKeystrokeMgr_AdviseKeyEventSink(keymgr,cid,sink,TRUE);
    ok(hr == E_INVALIDARG,"Wrong return, expected E_INVALIDARG\n");

    hr =ITfKeystrokeMgr_PreserveKey(keymgr, 0, &CLSID_PreservedKey, &tfpk, ((void*)0), 0);
    ok(hr==E_INVALIDARG,"ITfKeystrokeMgr_PreserveKey improperly succeeded\n");

    hr =ITfKeystrokeMgr_PreserveKey(keymgr, tid, &CLSID_PreservedKey, &tfpk, ((void*)0), 0);
    ok(SUCCEEDED(hr),"ITfKeystrokeMgr_PreserveKey failed\n");

    hr =ITfKeystrokeMgr_PreserveKey(keymgr, tid, &CLSID_PreservedKey, &tfpk, ((void*)0), 0);
    ok(hr == TF_E_ALREADY_EXISTS,"ITfKeystrokeMgr_PreserveKey improperly succeeded\n");

    preserved = FALSE;
    hr = ITfKeystrokeMgr_IsPreservedKey(keymgr, &CLSID_PreservedKey, &tfpk, &preserved);
    ok(hr == S_OK, "ITfKeystrokeMgr_IsPreservedKey failed\n");
    if (hr == S_OK) ok(preserved == TRUE,"misreporting preserved key\n");

    hr = ITfKeystrokeMgr_UnpreserveKey(keymgr, &CLSID_PreservedKey,&tfpk);
    ok(SUCCEEDED(hr),"ITfKeystrokeMgr_UnpreserveKey failed\n");

    hr = ITfKeystrokeMgr_IsPreservedKey(keymgr, &CLSID_PreservedKey, &tfpk, &preserved);
    ok(hr == S_FALSE, "ITfKeystrokeMgr_IsPreservedKey failed\n");
    if (hr == S_FALSE) ok(preserved == FALSE,"misreporting preserved key\n");

    hr = ITfKeystrokeMgr_UnpreserveKey(keymgr, &CLSID_PreservedKey,&tfpk);
    ok(hr==CONNECT_E_NOCONNECTION,"ITfKeystrokeMgr_UnpreserveKey improperly succeeded\n");

    hr = ITfKeystrokeMgr_UnadviseKeyEventSink(keymgr,tid);
    ok(SUCCEEDED(hr),"ITfKeystrokeMgr_UnadviseKeyEventSink failed\n");

    ITfKeystrokeMgr_Release(keymgr);
    ITfKeyEventSink_Release(sink);
}
