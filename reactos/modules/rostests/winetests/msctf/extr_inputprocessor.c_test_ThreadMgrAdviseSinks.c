
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int IUnknown ;
typedef int ITfSource ;
typedef scalar_t__ HRESULT ;


 scalar_t__ FAILED (scalar_t__) ;
 int IID_ITfInputProcessorProfileActivationSink ;
 int IID_ITfKeyTraceEventSink ;
 int IID_ITfSource ;
 int IID_ITfThreadMgrEventSink ;
 int IID_ITfUIElementSink ;
 scalar_t__ ITfSource_AdviseSink (int *,int *,int *,scalar_t__*) ;
 int ITfSource_Release (int *) ;
 scalar_t__ ITfThreadMgr_QueryInterface (int ,int *,int *) ;
 int IUnknown_Release (int *) ;
 int SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int TfInputProcessorProfileActivationSink ;
 int TfKeyTraceEventSink ;
 int TfUIElementSink ;
 scalar_t__ ThreadMgrEventSink_Constructor (int **) ;
 int g_tm ;
 scalar_t__ key_trace_sink_cookie ;
 int ok (int,char*,...) ;
 scalar_t__ profile_activation_sink_cookie ;
 scalar_t__ tmSinkCookie ;
 int tmSinkRefCount ;
 scalar_t__ ui_element_sink_cookie ;

__attribute__((used)) static void test_ThreadMgrAdviseSinks(void)
{
    ITfSource *source = ((void*)0);
    HRESULT hr;
    IUnknown *sink;

    hr = ITfThreadMgr_QueryInterface(g_tm, &IID_ITfSource, (LPVOID*)&source);
    ok(SUCCEEDED(hr),"Failed to get IID_ITfSource for ThreadMgr\n");
    if (!source)
        return;

    hr = ThreadMgrEventSink_Constructor(&sink);
    ok(hr == S_OK, "got %08x\n", hr);
    if(FAILED(hr)) return;

    tmSinkRefCount = 1;
    tmSinkCookie = 0;
    hr = ITfSource_AdviseSink(source,&IID_ITfThreadMgrEventSink, sink, &tmSinkCookie);
    ok(hr == S_OK, "Failed to Advise ITfThreadMgrEventSink\n");
    ok(tmSinkCookie!=0,"Failed to get sink cookie\n");



    tmSinkRefCount = 2;
    IUnknown_Release(sink);

    hr = ITfSource_AdviseSink(source, &IID_ITfKeyTraceEventSink, (IUnknown*)&TfKeyTraceEventSink,
                              &key_trace_sink_cookie);
    ok(hr == S_OK, "Failed to Advise ITfKeyTraceEventSink\n");

    hr = ITfSource_AdviseSink(source, &IID_ITfUIElementSink, (IUnknown*)&TfUIElementSink,
                              &ui_element_sink_cookie);
    ok(hr == S_OK, "Failed to Advise ITfUIElementSink\n");

    hr = ITfSource_AdviseSink(source, &IID_ITfInputProcessorProfileActivationSink, (IUnknown*)&TfInputProcessorProfileActivationSink,
                              &profile_activation_sink_cookie);
    ok(hr == S_OK, "Failed to Advise ITfInputProcessorProfileActivationSink\n");

    ITfSource_Release(source);
}
