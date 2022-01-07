
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef int cmsInt32Number ;
typedef int cmsContext ;


 int DupContext (int ,int *) ;
 int Fail (char*,int,int const) ;
 int WatchDogContext (int *) ;
 int cmsDeleteContext (int ) ;
 int cmsGetAlarmCodes (int ,int*) ;
 int cmsSetAlarmCodes (int ,int const*) ;

cmsInt32Number CheckAlarmColorsContext(void)
{
    cmsInt32Number rc = 0;
    const cmsUInt16Number codes[] = {0x0000, 0x1111, 0x2222, 0x3333, 0x4444, 0x5555, 0x6666, 0x7777, 0x8888, 0x9999, 0xaaaa, 0xbbbb, 0xcccc, 0xdddd, 0xeeee, 0xffff};
    cmsUInt16Number out[16];
    cmsContext c1, c2, c3;
    int i;

    c1 = WatchDogContext(((void*)0));

    cmsSetAlarmCodes(c1, codes);
    c2 = DupContext(c1, ((void*)0));
    c3 = DupContext(c2, ((void*)0));

    cmsGetAlarmCodes(c3, out);

    rc = 1;
    for (i=0; i < 16; i++) {
        if (out[i] != codes[i]) {
            Fail("Bad alarm code %x != %x", out[i], codes[i]);
            rc = 0;
            break;
        }
    }

    cmsDeleteContext(c1);
    cmsDeleteContext(c2);
    cmsDeleteContext(c3);

    return rc;
}
