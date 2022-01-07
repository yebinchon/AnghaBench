
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iids ;
typedef int IID ;


 int CLSID_SystemClock ;
 int CLSID_VideoRenderer ;
 int const IID_IBaseFilter ;
 int const IID_IBasicVideo ;
 int const IID_IMediaFilter ;
 int IID_IReferenceClock ;
 int const IID_IVideoWindow ;
 int test_aggregation (int ,int ,int ,int const) ;

__attribute__((used)) static void test_video_renderer_aggregations(void)
{
    const IID * iids[] = {
        &IID_IMediaFilter, &IID_IBaseFilter, &IID_IBasicVideo, &IID_IVideoWindow
    };
    int i;

    for (i = 0; i < sizeof(iids) / sizeof(iids[0]); i++)
    {
        test_aggregation(CLSID_SystemClock, CLSID_VideoRenderer,
                         IID_IReferenceClock, *iids[i]);
    }
}
