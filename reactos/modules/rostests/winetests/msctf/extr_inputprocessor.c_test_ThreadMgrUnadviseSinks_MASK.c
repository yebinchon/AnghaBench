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
typedef  int /*<<< orphan*/  ITfSource ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  IID_ITfSource ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  g_tm ; 
 int /*<<< orphan*/  key_trace_sink_cookie ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  profile_activation_sink_cookie ; 
 int /*<<< orphan*/  tmSinkCookie ; 
 int tmSinkRefCount ; 
 int /*<<< orphan*/  ui_element_sink_cookie ; 

__attribute__((used)) static void FUNC5(void)
{
    ITfSource *source = NULL;
    HRESULT hr;

    hr = FUNC2(g_tm, &IID_ITfSource, (LPVOID*)&source);
    FUNC4(FUNC3(hr),"Failed to get IID_ITfSource for ThreadMgr\n");
    if (!source)
        return;

    tmSinkRefCount = 1;
    hr = FUNC1(source, tmSinkCookie);
    FUNC4(hr == S_OK, "Failed to unadvise ITfThreadMgrEventSink\n");

    hr = FUNC1(source, key_trace_sink_cookie);
    FUNC4(hr == S_OK, "Failed to unadvise ITfKeyTraceEventSink\n");

    hr = FUNC1(source, ui_element_sink_cookie);
    FUNC4(hr == S_OK, "Failed to unadvise ITfUIElementSink\n");

    hr = FUNC1(source, profile_activation_sink_cookie);
    FUNC4(hr == S_OK, "Failed to unadvise ITfInputProcessorProfileActivationSink\n");

    FUNC0(source);
}