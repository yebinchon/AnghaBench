
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int ITfSource ;
typedef scalar_t__ HRESULT ;


 int IID_ITfSource ;
 int ITfSource_Release (int *) ;
 scalar_t__ ITfSource_UnadviseSink (int *,int ) ;
 scalar_t__ ITfThreadMgr_QueryInterface (int ,int *,int *) ;
 int SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int g_tm ;
 int key_trace_sink_cookie ;
 int ok (int,char*) ;
 int profile_activation_sink_cookie ;
 int tmSinkCookie ;
 int tmSinkRefCount ;
 int ui_element_sink_cookie ;

__attribute__((used)) static void test_ThreadMgrUnadviseSinks(void)
{
    ITfSource *source = ((void*)0);
    HRESULT hr;

    hr = ITfThreadMgr_QueryInterface(g_tm, &IID_ITfSource, (LPVOID*)&source);
    ok(SUCCEEDED(hr),"Failed to get IID_ITfSource for ThreadMgr\n");
    if (!source)
        return;

    tmSinkRefCount = 1;
    hr = ITfSource_UnadviseSink(source, tmSinkCookie);
    ok(hr == S_OK, "Failed to unadvise ITfThreadMgrEventSink\n");

    hr = ITfSource_UnadviseSink(source, key_trace_sink_cookie);
    ok(hr == S_OK, "Failed to unadvise ITfKeyTraceEventSink\n");

    hr = ITfSource_UnadviseSink(source, ui_element_sink_cookie);
    ok(hr == S_OK, "Failed to unadvise ITfUIElementSink\n");

    hr = ITfSource_UnadviseSink(source, profile_activation_sink_cookie);
    ok(hr == S_OK, "Failed to unadvise ITfInputProcessorProfileActivationSink\n");

    ITfSource_Release(source);
}
