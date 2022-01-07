
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef scalar_t__ cmsFloat64Number ;
typedef int * cmsContext ;


 int * DupContext (int *,int *) ;
 int Fail (char*) ;
 int IsGoodVal (char*,scalar_t__,double,double) ;
 int * WatchDogContext (int *) ;
 int cmsDeleteContext (int *) ;
 scalar_t__ cmsSetAdaptationState (int *,int) ;

cmsInt32Number CheckAdaptationStateContext(void)
{
    cmsInt32Number rc = 0;
    cmsContext c1, c2, c3;
    cmsFloat64Number old1, old2;

    old1 = cmsSetAdaptationState(((void*)0), -1);

    c1 = WatchDogContext(((void*)0));

    cmsSetAdaptationState(c1, 0.7);

    c2 = DupContext(c1, ((void*)0));
    c3 = DupContext(c2, ((void*)0));

    rc = IsGoodVal("Adaptation state", cmsSetAdaptationState(c3, -1), 0.7, 0.001);

    cmsDeleteContext(c1);
    cmsDeleteContext(c2);
    cmsDeleteContext(c3);

    old2 = cmsSetAdaptationState(((void*)0), -1);

    if (old1 != old2) {
        Fail("Adaptation state has changed");
        return 0;
    }

    return rc;
}
