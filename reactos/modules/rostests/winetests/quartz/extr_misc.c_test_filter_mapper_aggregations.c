
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iids ;
typedef int IID ;


 int CLSID_FilterMapper2 ;
 int CLSID_SystemClock ;
 int const IID_IFilterMapper ;
 int const IID_IFilterMapper2 ;
 int IID_IReferenceClock ;
 int test_aggregation (int ,int ,int ,int const) ;

__attribute__((used)) static void test_filter_mapper_aggregations(void)
{
    const IID * iids[] = {
        &IID_IFilterMapper2, &IID_IFilterMapper
    };
    int i;

    for (i = 0; i < sizeof(iids) / sizeof(iids[0]); i++)
    {
        test_aggregation(CLSID_SystemClock, CLSID_FilterMapper2,
                         IID_IReferenceClock, *iids[i]);
    }
}
