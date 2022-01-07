
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iids ;
typedef int IID ;


 int CLSID_FilterGraph ;
 int CLSID_SystemClock ;
 int const IID_IBasicAudio ;
 int const IID_IBasicVideo ;
 int const IID_IFilterGraph ;
 int const IID_IFilterGraph2 ;
 int const IID_IGraphBuilder ;
 int const IID_IGraphConfig ;
 int const IID_IMediaControl ;
 int const IID_IMediaEventEx ;
 int const IID_IMediaEventSink ;
 int const IID_IMediaFilter ;
 int const IID_IMediaPosition ;
 int const IID_IMediaSeeking ;
 int IID_IReferenceClock ;
 int const IID_IVideoWindow ;
 int test_aggregation (int ,int ,int ,int const) ;

__attribute__((used)) static void test_filter_graph_aggregations(void)
{
    const IID * iids[] = {
        &IID_IFilterGraph2, &IID_IMediaControl, &IID_IGraphBuilder,
        &IID_IFilterGraph, &IID_IMediaSeeking, &IID_IBasicAudio, &IID_IBasicVideo,
        &IID_IVideoWindow, &IID_IMediaEventEx, &IID_IMediaFilter,
        &IID_IMediaEventSink, &IID_IGraphConfig, &IID_IMediaPosition
    };
    int i;

    for (i = 0; i < sizeof(iids) / sizeof(iids[0]); i++)
    {
        test_aggregation(CLSID_SystemClock, CLSID_FilterGraph,
                         IID_IReferenceClock, *iids[i]);
    }
}
