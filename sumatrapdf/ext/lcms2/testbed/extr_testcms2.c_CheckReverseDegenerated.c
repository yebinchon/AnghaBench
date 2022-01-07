
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef int cmsToneCurve ;
typedef int cmsInt32Number ;


 int CheckFToneCurvePoint (int *,int,int) ;
 int DbgThread () ;
 int * cmsBuildTabulatedToneCurve16 (int ,int,int*) ;
 int cmsFreeToneCurve (int ,int *) ;
 int * cmsReverseToneCurve (int ,int *) ;

__attribute__((used)) static
cmsInt32Number CheckReverseDegenerated(void)
{
    cmsToneCurve* p, *g;
    cmsUInt16Number Tab[16];

    Tab[0] = 0;
    Tab[1] = 0;
    Tab[2] = 0;
    Tab[3] = 0;
    Tab[4] = 0;
    Tab[5] = 0x5555;
    Tab[6] = 0x6666;
    Tab[7] = 0x7777;
    Tab[8] = 0x8888;
    Tab[9] = 0x9999;
    Tab[10]= 0xffff;
    Tab[11]= 0xffff;
    Tab[12]= 0xffff;
    Tab[13]= 0xffff;
    Tab[14]= 0xffff;
    Tab[15]= 0xffff;

    p = cmsBuildTabulatedToneCurve16(DbgThread(), 16, Tab);
    g = cmsReverseToneCurve(DbgThread(), p);


    if (!CheckFToneCurvePoint(g, 0x5555, 0x5555)) return 0;
    if (!CheckFToneCurvePoint(g, 0x7777, 0x7777)) return 0;


    if (!CheckFToneCurvePoint(g, 0x0000, 0x4444)) return 0;


    if (!CheckFToneCurvePoint(g, 0xFFFF, 0xFFFF)) return 0;

    cmsFreeToneCurve(DbgThread(), p);
    cmsFreeToneCurve(DbgThread(), g);

    return 1;
}
