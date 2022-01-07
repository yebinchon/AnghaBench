
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IVideoWindow ;
typedef int IPin ;
typedef int IFilterGraph2 ;
typedef int IBaseFilter ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_VideoRenderer ;
 scalar_t__ CoCreateInstance (int *,int *,int ,int *,void**) ;
 scalar_t__ IBaseFilter_FindPin (int *,char const*,int **) ;
 int IBaseFilter_Release (int *) ;
 scalar_t__ IFilterGraph2_AddFilter (int *,int *,int *) ;
 scalar_t__ IFilterGraph2_AddSourceFilter (int *,char*,int *,int **) ;
 scalar_t__ IFilterGraph2_Connect (int *,int *,int *) ;
 int IFilterGraph2_Release (int *) ;
 int IID_IBaseFilter ;
 int IID_IVideoWindow ;
 int IPin_Release (int *) ;
 scalar_t__ IVideoWindow_QueryInterface (int *,int *,void**) ;
 int IVideoWindow_Release (int *) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int * create_graph () ;
 int ok (int,char*,scalar_t__) ;
 int rungraph (int *) ;

__attribute__((used)) static HRESULT test_graph_builder_connect(WCHAR *filename)
{
    static const WCHAR outputW[] = {'O','u','t','p','u','t',0};
    static const WCHAR inW[] = {'I','n',0};
    IBaseFilter *source_filter, *video_filter;
    IPin *pin_in, *pin_out;
    IFilterGraph2 *graph;
    IVideoWindow *window;
    HRESULT hr;

    graph = create_graph();

    hr = CoCreateInstance(&CLSID_VideoRenderer, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IVideoWindow, (void **)&window);
    ok(hr == S_OK, "Failed to create VideoRenderer: %#x\n", hr);

    hr = IFilterGraph2_AddSourceFilter(graph, filename, ((void*)0), &source_filter);
    ok(hr == S_OK, "AddSourceFilter failed: %#x\n", hr);

    hr = IVideoWindow_QueryInterface(window, &IID_IBaseFilter, (void **)&video_filter);
    ok(hr == S_OK, "QueryInterface(IBaseFilter) failed: %#x\n", hr);
    hr = IFilterGraph2_AddFilter(graph, video_filter, ((void*)0));
    ok(hr == S_OK, "AddFilter failed: %#x\n", hr);

    hr = IBaseFilter_FindPin(source_filter, outputW, &pin_out);
    ok(hr == S_OK, "FindPin failed: %#x\n", hr);
    hr = IBaseFilter_FindPin(video_filter, inW, &pin_in);
    ok(hr == S_OK, "FindPin failed: %#x\n", hr);
    hr = IFilterGraph2_Connect(graph, pin_out, pin_in);

    if (SUCCEEDED(hr))
        rungraph(graph);

    IPin_Release(pin_in);
    IPin_Release(pin_out);
    IBaseFilter_Release(source_filter);
    IBaseFilter_Release(video_filter);
    IVideoWindow_Release(window);
    IFilterGraph2_Release(graph);

    return hr;
}
