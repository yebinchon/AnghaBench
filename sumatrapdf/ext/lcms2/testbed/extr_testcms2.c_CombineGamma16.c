
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef int cmsToneCurve ;
typedef int cmsInt32Number ;


 int DbgThread () ;
 int _cmsQuantizeVal (int,int) ;
 int * cmsBuildTabulatedToneCurve16 (int ,int,int *) ;
 int cmsEvalToneCurve16 (int ,int *,int ) ;

__attribute__((used)) static
cmsToneCurve* CombineGamma16(cmsToneCurve* g1, cmsToneCurve* g2)
{
    cmsUInt16Number Tab[256];

    cmsInt32Number i;

    for (i=0; i < 256; i++) {

        cmsUInt16Number wValIn;

        wValIn = _cmsQuantizeVal(i, 256);
        Tab[i] = cmsEvalToneCurve16(DbgThread(), g2, cmsEvalToneCurve16(DbgThread(), g1, wValIn));
    }

    return cmsBuildTabulatedToneCurve16(DbgThread(), 256, Tab);
}
