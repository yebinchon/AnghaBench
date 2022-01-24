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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  ITfSource ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  IID_ITfInputProcessorProfileActivationSink ; 
 int /*<<< orphan*/  IID_ITfKeyTraceEventSink ; 
 int /*<<< orphan*/  IID_ITfSource ; 
 int /*<<< orphan*/  IID_ITfThreadMgrEventSink ; 
 int /*<<< orphan*/  IID_ITfUIElementSink ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TfInputProcessorProfileActivationSink ; 
 int /*<<< orphan*/  TfKeyTraceEventSink ; 
 int /*<<< orphan*/  TfUIElementSink ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  g_tm ; 
 scalar_t__ key_trace_sink_cookie ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 scalar_t__ profile_activation_sink_cookie ; 
 scalar_t__ tmSinkCookie ; 
 int tmSinkRefCount ; 
 scalar_t__ ui_element_sink_cookie ; 

__attribute__((used)) static void FUNC8(void)
{
    ITfSource *source = NULL;
    HRESULT hr;
    IUnknown *sink;

    hr = FUNC3(g_tm, &IID_ITfSource, (LPVOID*)&source);
    FUNC7(FUNC5(hr),"Failed to get IID_ITfSource for ThreadMgr\n");
    if (!source)
        return;

    hr = FUNC6(&sink);
    FUNC7(hr == S_OK, "got %08x\n", hr);
    if(FUNC0(hr)) return;

    tmSinkRefCount = 1;
    tmSinkCookie = 0;
    hr = FUNC1(source,&IID_ITfThreadMgrEventSink, sink, &tmSinkCookie);
    FUNC7(hr == S_OK, "Failed to Advise ITfThreadMgrEventSink\n");
    FUNC7(tmSinkCookie!=0,"Failed to get sink cookie\n");

    /* Advising the sink adds a ref, Releasing here lets the object be deleted
       when unadvised */
    tmSinkRefCount = 2;
    FUNC4(sink);

    hr = FUNC1(source, &IID_ITfKeyTraceEventSink, (IUnknown*)&TfKeyTraceEventSink,
                              &key_trace_sink_cookie);
    FUNC7(hr == S_OK, "Failed to Advise ITfKeyTraceEventSink\n");

    hr = FUNC1(source, &IID_ITfUIElementSink, (IUnknown*)&TfUIElementSink,
                              &ui_element_sink_cookie);
    FUNC7(hr == S_OK, "Failed to Advise ITfUIElementSink\n");

    hr = FUNC1(source, &IID_ITfInputProcessorProfileActivationSink, (IUnknown*)&TfInputProcessorProfileActivationSink,
                              &profile_activation_sink_cookie);
    FUNC7(hr == S_OK, "Failed to Advise ITfInputProcessorProfileActivationSink\n");

    FUNC2(source);
}