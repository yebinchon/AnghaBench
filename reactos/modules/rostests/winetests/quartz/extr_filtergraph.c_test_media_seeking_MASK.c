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
typedef  int LONGLONG ;
typedef  int /*<<< orphan*/  IMediaSeeking ;
typedef  int /*<<< orphan*/  IMediaFilter ;
typedef  int /*<<< orphan*/  IFilterGraph2 ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  AM_SEEKING_AbsolutePositioning ; 
 int /*<<< orphan*/  AM_SEEKING_NoPositioning ; 
 int /*<<< orphan*/  AM_SEEKING_ReturnTime ; 
 int /*<<< orphan*/  GUID_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IMediaFilter ; 
 int /*<<< orphan*/  IID_IMediaSeeking ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TIME_FORMAT_MEDIA_TIME ; 
 int /*<<< orphan*/  FUNC12 (int,char*,scalar_t__,...) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static void FUNC15(IFilterGraph2 *graph)
{
    IMediaSeeking *seeking;
    IMediaFilter *filter;
    LONGLONG pos, stop, duration;
    GUID format;
    HRESULT hr;

    FUNC1(graph);
    hr = FUNC0(graph, &IID_IMediaSeeking, (void **)&seeking);
    FUNC12(hr == S_OK, "QueryInterface(IMediaControl) failed: %08x\n", hr);

    hr = FUNC0(graph, &IID_IMediaFilter, (void **)&filter);
    FUNC12(hr == S_OK, "QueryInterface(IMediaFilter) failed: %08x\n", hr);

    format = GUID_NULL;
    hr = FUNC8(seeking, &format);
    FUNC12(hr == S_OK, "GetTimeFormat failed: %#x\n", hr);
    FUNC12(FUNC11(&format, &TIME_FORMAT_MEDIA_TIME), "got %s\n", FUNC13(&format));

    pos = 0xdeadbeef;
    hr = FUNC4(seeking, &pos, NULL, 0x123456789a, NULL);
    FUNC12(hr == S_OK, "ConvertTimeFormat failed: %#x\n", hr);
    FUNC12(pos == 0x123456789a, "got %s\n", FUNC14(pos));

    pos = 0xdeadbeef;
    hr = FUNC4(seeking, &pos, &TIME_FORMAT_MEDIA_TIME, 0x123456789a, NULL);
    FUNC12(hr == S_OK, "ConvertTimeFormat failed: %#x\n", hr);
    FUNC12(pos == 0x123456789a, "got %s\n", FUNC14(pos));

    pos = 0xdeadbeef;
    hr = FUNC4(seeking, &pos, NULL, 0x123456789a, &TIME_FORMAT_MEDIA_TIME);
    FUNC12(hr == S_OK, "ConvertTimeFormat failed: %#x\n", hr);
    FUNC12(pos == 0x123456789a, "got %s\n", FUNC14(pos));

    hr = FUNC5(seeking, &pos);
    FUNC12(hr == S_OK, "GetCurrentPosition failed: %#x\n", hr);
    FUNC12(pos == 0, "got %s\n", FUNC14(pos));

    hr = FUNC6(seeking, &duration);
    FUNC12(hr == S_OK, "GetDuration failed: %#x\n", hr);
    FUNC12(duration > 0, "got %s\n", FUNC14(duration));

    hr = FUNC7(seeking, &stop);
    FUNC12(hr == S_OK, "GetCurrentPosition failed: %08x\n", hr);
    FUNC12(stop == duration || stop == duration + 1, "expected %s, got %s\n",
        FUNC14(duration), FUNC14(stop));

    hr = FUNC10(seeking, NULL, AM_SEEKING_ReturnTime, NULL, AM_SEEKING_NoPositioning);
    FUNC12(hr == S_OK, "SetPositions failed: %#x\n", hr);
    hr = FUNC10(seeking, NULL, AM_SEEKING_NoPositioning, NULL, AM_SEEKING_ReturnTime);
    FUNC12(hr == S_OK, "SetPositions failed: %#x\n", hr);

    pos = 0;
    hr = FUNC10(seeking, &pos, AM_SEEKING_AbsolutePositioning, NULL, AM_SEEKING_NoPositioning);
    FUNC12(hr == S_OK, "SetPositions failed: %08x\n", hr);

    FUNC3(filter, NULL);
    pos = 0xdeadbeef;
    hr = FUNC5(seeking, &pos);
    FUNC12(hr == S_OK, "GetCurrentPosition failed: %08x\n", hr);
    FUNC12(pos == 0, "Position != 0 (%s)\n", FUNC14(pos));
    FUNC1(graph);

    FUNC9(seeking);
    FUNC2(filter);
}