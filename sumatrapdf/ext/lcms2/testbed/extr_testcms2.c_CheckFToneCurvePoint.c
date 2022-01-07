
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef int cmsToneCurve ;
typedef int cmsInt32Number ;


 int DbgThread () ;
 int abs (int) ;
 int cmsEvalToneCurve16 (int ,int *,int ) ;

__attribute__((used)) static
cmsInt32Number CheckFToneCurvePoint(cmsToneCurve* c, cmsUInt16Number Point, cmsInt32Number Value)
{
    cmsInt32Number Result;

    Result = cmsEvalToneCurve16(DbgThread(), c, Point);

    return (abs(Value - Result) < 2);
}
