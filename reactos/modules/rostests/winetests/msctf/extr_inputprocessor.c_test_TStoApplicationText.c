
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int ITfTextEditSink ;
typedef int ITfSource ;
typedef int ITfEditSession ;
typedef int ITfDocumentMgr ;
typedef int ITfContext ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 int ACPSink ;
 scalar_t__ E_FAIL ;
 scalar_t__ E_INVALIDARG ;
 int EditSession_Constructor (int **) ;
 int IID_ITfSource ;
 int IID_ITfTextEditSink ;
 int ITextStoreACPSink_OnStatusChange (int ,scalar_t__) ;
 scalar_t__ ITfContext_QueryInterface (int *,int *,int *) ;
 int ITfContext_Release (int *) ;
 scalar_t__ ITfContext_RequestEditSession (int *,int ,int *,int,scalar_t__*) ;
 int ITfDocumentMgr_GetTop (int *,int **) ;
 int ITfDocumentMgr_Release (int *) ;
 int ITfEditSession_Release (int *) ;
 scalar_t__ ITfSource_AdviseSink (int *,int *,int ,int*) ;
 int ITfSource_Release (int *) ;
 scalar_t__ ITfSource_UnadviseSink (int *,int) ;
 int ITfTextEditSink_Release (int *) ;
 int ITfThreadMgr_GetFocus (int ,int **) ;
 int SINK_EXPECTED ;
 int SUCCEEDED (scalar_t__) ;
 int TF_ES_READWRITE ;
 int TF_ES_SYNC ;
 scalar_t__ TS_E_READONLY ;
 scalar_t__ TS_SD_READONLY ;
 int TextEditSink_Constructor (int **) ;
 scalar_t__ documentStatus ;
 int g_tm ;
 int ok (int,char*,...) ;
 int sink_check_ok (int *,char*) ;
 int test_ACP_GetStatus ;
 int test_ACP_RequestLock ;
 int test_DoEditSession ;
 int test_OnEndEdit ;
 int tid ;

__attribute__((used)) static void test_TStoApplicationText(void)
{
    HRESULT hr, hrSession;
    ITfEditSession *es;
    ITfContext *cxt;
    ITfDocumentMgr *dm;
    ITfTextEditSink *sink;
    ITfSource *source = ((void*)0);
    DWORD editSinkCookie = -1;

    ITfThreadMgr_GetFocus(g_tm, &dm);
    EditSession_Constructor(&es);
    ITfDocumentMgr_GetTop(dm,&cxt);

    TextEditSink_Constructor(&sink);
    hr = ITfContext_QueryInterface(cxt,&IID_ITfSource,(LPVOID*)&source);
    ok(SUCCEEDED(hr),"Failed to get IID_ITfSource for Context\n");
    if (source)
    {
        hr = ITfSource_AdviseSink(source, &IID_ITfTextEditSink, (LPVOID)sink, &editSinkCookie);
        ok(SUCCEEDED(hr),"Failed to advise Sink\n");
        ok(editSinkCookie != -1,"Failed to get sink cookie\n");
    }

    hrSession = 0xfeedface;

    hr = ITfContext_RequestEditSession(cxt, tid, es, TF_ES_SYNC, &hrSession);
    ok(hr == E_INVALIDARG,"RequestEditSession should have failed with %x not %x\n",E_INVALIDARG,hr);
    ok(hrSession == E_FAIL,"hrSession should be %x not %x\n",E_FAIL,hrSession);

    documentStatus = TS_SD_READONLY;
    hrSession = 0xfeedface;
    test_ACP_GetStatus = SINK_EXPECTED;
    hr = ITfContext_RequestEditSession(cxt, tid, es, TF_ES_SYNC|TF_ES_READWRITE, &hrSession);
    ok(SUCCEEDED(hr),"ITfContext_RequestEditSession failed\n");
    ok(hrSession == TS_E_READONLY,"Unexpected hrSession (%x)\n",hrSession);
    sink_check_ok(&test_ACP_GetStatus,"GetStatus");


    documentStatus = 0;
    test_ACP_RequestLock = SINK_EXPECTED;
    ITextStoreACPSink_OnStatusChange(ACPSink,documentStatus);
    sink_check_ok(&test_ACP_RequestLock,"RequestLock");

    test_ACP_GetStatus = SINK_EXPECTED;
    test_ACP_RequestLock = SINK_EXPECTED;
    test_DoEditSession = SINK_EXPECTED;
    hrSession = 0xfeedface;
    test_OnEndEdit = SINK_EXPECTED;
    hr = ITfContext_RequestEditSession(cxt, tid, es, TF_ES_SYNC|TF_ES_READWRITE, &hrSession);
    ok(SUCCEEDED(hr),"ITfContext_RequestEditSession failed\n");
    sink_check_ok(&test_OnEndEdit,"OnEndEdit");
    sink_check_ok(&test_DoEditSession,"DoEditSession");
    sink_check_ok(&test_ACP_GetStatus,"GetStatus");
    ok(hrSession == 0xdeadcafe,"Unexpected hrSession (%x)\n",hrSession);

    if (source)
    {
        hr = ITfSource_UnadviseSink(source, editSinkCookie);
        ok(SUCCEEDED(hr),"Failed to unadvise Sink\n");
        ITfSource_Release(source);
    }
    ITfTextEditSink_Release(sink);
    ITfContext_Release(cxt);
    ITfDocumentMgr_Release(dm);
    ITfEditSession_Release(es);
}
