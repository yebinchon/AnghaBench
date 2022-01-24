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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  IVideoWindow ;
typedef  int /*<<< orphan*/  IPin ;
typedef  int /*<<< orphan*/  IFilterGraph2 ;
typedef  int /*<<< orphan*/  IBaseFilter ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_VideoRenderer ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IBaseFilter ; 
 int /*<<< orphan*/  IID_IVideoWindow ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC14(WCHAR *filename)
{
    static const WCHAR outputW[] = {'O','u','t','p','u','t',0};
    static const WCHAR inW[] = {'I','n',0};
    IBaseFilter *source_filter, *video_filter;
    IPin *pin_in, *pin_out;
    IFilterGraph2 *graph;
    IVideoWindow *window;
    HRESULT hr;

    graph = FUNC11();

    hr = FUNC0(&CLSID_VideoRenderer, NULL, CLSCTX_INPROC_SERVER, &IID_IVideoWindow, (void **)&window);
    FUNC12(hr == S_OK, "Failed to create VideoRenderer: %#x\n", hr);

    hr = FUNC4(graph, filename, NULL, &source_filter);
    FUNC12(hr == S_OK, "AddSourceFilter failed: %#x\n", hr);

    hr = FUNC8(window, &IID_IBaseFilter, (void **)&video_filter);
    FUNC12(hr == S_OK, "QueryInterface(IBaseFilter) failed: %#x\n", hr);
    hr = FUNC3(graph, video_filter, NULL);
    FUNC12(hr == S_OK, "AddFilter failed: %#x\n", hr);

    hr = FUNC1(source_filter, outputW, &pin_out);
    FUNC12(hr == S_OK, "FindPin failed: %#x\n", hr);
    hr = FUNC1(video_filter, inW, &pin_in);
    FUNC12(hr == S_OK, "FindPin failed: %#x\n", hr);
    hr = FUNC5(graph, pin_out, pin_in);

    if (FUNC10(hr))
        FUNC13(graph);

    FUNC7(pin_in);
    FUNC7(pin_out);
    FUNC2(source_filter);
    FUNC2(video_filter);
    FUNC9(window);
    FUNC6(graph);

    return hr;
}