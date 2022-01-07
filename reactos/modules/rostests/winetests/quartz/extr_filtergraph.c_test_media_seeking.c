
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONGLONG ;
typedef int IMediaSeeking ;
typedef int IMediaFilter ;
typedef int IFilterGraph2 ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;


 int AM_SEEKING_AbsolutePositioning ;
 int AM_SEEKING_NoPositioning ;
 int AM_SEEKING_ReturnTime ;
 int GUID_NULL ;
 scalar_t__ IFilterGraph2_QueryInterface (int *,int *,void**) ;
 int IFilterGraph2_SetDefaultSyncSource (int *) ;
 int IID_IMediaFilter ;
 int IID_IMediaSeeking ;
 int IMediaFilter_Release (int *) ;
 int IMediaFilter_SetSyncSource (int *,int *) ;
 scalar_t__ IMediaSeeking_ConvertTimeFormat (int *,int*,int *,int,int *) ;
 scalar_t__ IMediaSeeking_GetCurrentPosition (int *,int*) ;
 scalar_t__ IMediaSeeking_GetDuration (int *,int*) ;
 scalar_t__ IMediaSeeking_GetStopPosition (int *,int*) ;
 scalar_t__ IMediaSeeking_GetTimeFormat (int *,int *) ;
 int IMediaSeeking_Release (int *) ;
 scalar_t__ IMediaSeeking_SetPositions (int *,int*,int ,int *,int ) ;
 int IsEqualGUID (int *,int *) ;
 scalar_t__ S_OK ;
 int TIME_FORMAT_MEDIA_TIME ;
 int ok (int,char*,scalar_t__,...) ;
 scalar_t__ wine_dbgstr_guid (int *) ;
 scalar_t__ wine_dbgstr_longlong (int) ;

__attribute__((used)) static void test_media_seeking(IFilterGraph2 *graph)
{
    IMediaSeeking *seeking;
    IMediaFilter *filter;
    LONGLONG pos, stop, duration;
    GUID format;
    HRESULT hr;

    IFilterGraph2_SetDefaultSyncSource(graph);
    hr = IFilterGraph2_QueryInterface(graph, &IID_IMediaSeeking, (void **)&seeking);
    ok(hr == S_OK, "QueryInterface(IMediaControl) failed: %08x\n", hr);

    hr = IFilterGraph2_QueryInterface(graph, &IID_IMediaFilter, (void **)&filter);
    ok(hr == S_OK, "QueryInterface(IMediaFilter) failed: %08x\n", hr);

    format = GUID_NULL;
    hr = IMediaSeeking_GetTimeFormat(seeking, &format);
    ok(hr == S_OK, "GetTimeFormat failed: %#x\n", hr);
    ok(IsEqualGUID(&format, &TIME_FORMAT_MEDIA_TIME), "got %s\n", wine_dbgstr_guid(&format));

    pos = 0xdeadbeef;
    hr = IMediaSeeking_ConvertTimeFormat(seeking, &pos, ((void*)0), 0x123456789a, ((void*)0));
    ok(hr == S_OK, "ConvertTimeFormat failed: %#x\n", hr);
    ok(pos == 0x123456789a, "got %s\n", wine_dbgstr_longlong(pos));

    pos = 0xdeadbeef;
    hr = IMediaSeeking_ConvertTimeFormat(seeking, &pos, &TIME_FORMAT_MEDIA_TIME, 0x123456789a, ((void*)0));
    ok(hr == S_OK, "ConvertTimeFormat failed: %#x\n", hr);
    ok(pos == 0x123456789a, "got %s\n", wine_dbgstr_longlong(pos));

    pos = 0xdeadbeef;
    hr = IMediaSeeking_ConvertTimeFormat(seeking, &pos, ((void*)0), 0x123456789a, &TIME_FORMAT_MEDIA_TIME);
    ok(hr == S_OK, "ConvertTimeFormat failed: %#x\n", hr);
    ok(pos == 0x123456789a, "got %s\n", wine_dbgstr_longlong(pos));

    hr = IMediaSeeking_GetCurrentPosition(seeking, &pos);
    ok(hr == S_OK, "GetCurrentPosition failed: %#x\n", hr);
    ok(pos == 0, "got %s\n", wine_dbgstr_longlong(pos));

    hr = IMediaSeeking_GetDuration(seeking, &duration);
    ok(hr == S_OK, "GetDuration failed: %#x\n", hr);
    ok(duration > 0, "got %s\n", wine_dbgstr_longlong(duration));

    hr = IMediaSeeking_GetStopPosition(seeking, &stop);
    ok(hr == S_OK, "GetCurrentPosition failed: %08x\n", hr);
    ok(stop == duration || stop == duration + 1, "expected %s, got %s\n",
        wine_dbgstr_longlong(duration), wine_dbgstr_longlong(stop));

    hr = IMediaSeeking_SetPositions(seeking, ((void*)0), AM_SEEKING_ReturnTime, ((void*)0), AM_SEEKING_NoPositioning);
    ok(hr == S_OK, "SetPositions failed: %#x\n", hr);
    hr = IMediaSeeking_SetPositions(seeking, ((void*)0), AM_SEEKING_NoPositioning, ((void*)0), AM_SEEKING_ReturnTime);
    ok(hr == S_OK, "SetPositions failed: %#x\n", hr);

    pos = 0;
    hr = IMediaSeeking_SetPositions(seeking, &pos, AM_SEEKING_AbsolutePositioning, ((void*)0), AM_SEEKING_NoPositioning);
    ok(hr == S_OK, "SetPositions failed: %08x\n", hr);

    IMediaFilter_SetSyncSource(filter, ((void*)0));
    pos = 0xdeadbeef;
    hr = IMediaSeeking_GetCurrentPosition(seeking, &pos);
    ok(hr == S_OK, "GetCurrentPosition failed: %08x\n", hr);
    ok(pos == 0, "Position != 0 (%s)\n", wine_dbgstr_longlong(pos));
    IFilterGraph2_SetDefaultSyncSource(graph);

    IMediaSeeking_Release(seeking);
    IMediaFilter_Release(filter);
}
