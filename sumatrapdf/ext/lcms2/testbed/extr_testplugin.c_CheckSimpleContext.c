
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef int cmsContext ;


 int DebugMemDontCheckThis (int ) ;
 int DupContext (int ,int*) ;
 int Fail (char*) ;
 int WatchDogContext (int*) ;
 int cmsCreateContext (int *,int*) ;
 int cmsDeleteContext (int ) ;
 scalar_t__ cmsGetContextUserData (int ) ;

cmsInt32Number CheckSimpleContext(void)
{
    int a = 1;
    int b = 32;
    cmsInt32Number rc = 0;

    cmsContext c1, c2, c3;



    c1 = WatchDogContext(&a);
    cmsDeleteContext(c1);

    c1 = WatchDogContext(&a);


    c2 = DupContext(c1, ((void*)0));
    c3 = DupContext(c2, ((void*)0));


    rc = (*(int*) cmsGetContextUserData(c3)) == 1 ;


    cmsDeleteContext(c1);
    cmsDeleteContext(c2);
    cmsDeleteContext(c3);

    if (!rc) {
        Fail("Creation of user data failed");
        return 0;
    }


    c1 = cmsCreateContext(((void*)0), &a);
    DebugMemDontCheckThis(c1);

    c2 = DupContext(c1, ((void*)0));
    c3 = DupContext(c2, &b);

    rc = (*(int*) cmsGetContextUserData(c3)) == 32 ;

    cmsDeleteContext(c1);
    cmsDeleteContext(c2);
    cmsDeleteContext(c3);

    if (!rc) {
        Fail("Modification of user data failed");
        return 0;
    }


    return rc;
}
