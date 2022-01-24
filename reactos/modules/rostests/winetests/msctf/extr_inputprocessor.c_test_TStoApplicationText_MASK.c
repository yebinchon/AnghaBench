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
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  ITfTextEditSink ;
typedef  int /*<<< orphan*/  ITfSource ;
typedef  int /*<<< orphan*/  ITfEditSession ;
typedef  int /*<<< orphan*/  ITfDocumentMgr ;
typedef  int /*<<< orphan*/  ITfContext ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ACPSink ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_ITfSource ; 
 int /*<<< orphan*/  IID_ITfTextEditSink ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  SINK_EXPECTED ; 
 int FUNC13 (scalar_t__) ; 
 int TF_ES_READWRITE ; 
 int TF_ES_SYNC ; 
 scalar_t__ TS_E_READONLY ; 
 scalar_t__ TS_SD_READONLY ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **) ; 
 scalar_t__ documentStatus ; 
 int /*<<< orphan*/  g_tm ; 
 int /*<<< orphan*/  FUNC15 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  test_ACP_GetStatus ; 
 int /*<<< orphan*/  test_ACP_RequestLock ; 
 int /*<<< orphan*/  test_DoEditSession ; 
 int /*<<< orphan*/  test_OnEndEdit ; 
 int /*<<< orphan*/  tid ; 

__attribute__((used)) static void FUNC17(void)
{
    HRESULT hr, hrSession;
    ITfEditSession *es;
    ITfContext *cxt;
    ITfDocumentMgr *dm;
    ITfTextEditSink *sink;
    ITfSource *source = NULL;
    DWORD editSinkCookie = -1;

    FUNC12(g_tm, &dm);
    FUNC0(&es);
    FUNC5(dm,&cxt);

    FUNC14(&sink);
    hr = FUNC2(cxt,&IID_ITfSource,(LPVOID*)&source);
    FUNC15(FUNC13(hr),"Failed to get IID_ITfSource for Context\n");
    if (source)
    {
        hr = FUNC8(source, &IID_ITfTextEditSink, (LPVOID)sink, &editSinkCookie);
        FUNC15(FUNC13(hr),"Failed to advise Sink\n");
        FUNC15(editSinkCookie != -1,"Failed to get sink cookie\n");
    }

    hrSession = 0xfeedface;
    /* Test no permissions flags */
    hr = FUNC4(cxt, tid, es, TF_ES_SYNC, &hrSession);
    FUNC15(hr == E_INVALIDARG,"RequestEditSession should have failed with %x not %x\n",E_INVALIDARG,hr);
    FUNC15(hrSession == E_FAIL,"hrSession should be %x not %x\n",E_FAIL,hrSession);

    documentStatus = TS_SD_READONLY;
    hrSession = 0xfeedface;
    test_ACP_GetStatus = SINK_EXPECTED;
    hr = FUNC4(cxt, tid, es, TF_ES_SYNC|TF_ES_READWRITE, &hrSession);
    FUNC15(FUNC13(hr),"ITfContext_RequestEditSession failed\n");
    FUNC15(hrSession == TS_E_READONLY,"Unexpected hrSession (%x)\n",hrSession);
    FUNC16(&test_ACP_GetStatus,"GetStatus");

    /* signal a change to allow readwrite sessions */
    documentStatus = 0;
    test_ACP_RequestLock = SINK_EXPECTED;
    FUNC1(ACPSink,documentStatus);
    FUNC16(&test_ACP_RequestLock,"RequestLock");

    test_ACP_GetStatus = SINK_EXPECTED;
    test_ACP_RequestLock = SINK_EXPECTED;
    test_DoEditSession = SINK_EXPECTED;
    hrSession = 0xfeedface;
    test_OnEndEdit = SINK_EXPECTED;
    hr = FUNC4(cxt, tid, es, TF_ES_SYNC|TF_ES_READWRITE, &hrSession);
    FUNC15(FUNC13(hr),"ITfContext_RequestEditSession failed\n");
    FUNC16(&test_OnEndEdit,"OnEndEdit");
    FUNC16(&test_DoEditSession,"DoEditSession");
    FUNC16(&test_ACP_GetStatus,"GetStatus");
    FUNC15(hrSession == 0xdeadcafe,"Unexpected hrSession (%x)\n",hrSession);

    if (source)
    {
        hr = FUNC10(source, editSinkCookie);
        FUNC15(FUNC13(hr),"Failed to unadvise Sink\n");
        FUNC9(source);
    }
    FUNC11(sink);
    FUNC3(cxt);
    FUNC6(dm);
    FUNC7(es);
}