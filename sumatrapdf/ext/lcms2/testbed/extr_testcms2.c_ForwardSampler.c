
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ cmsUInt16Number ;
typedef int cmsInt32Number ;
typedef scalar_t__ cmsFloat64Number ;
typedef int cmsContext ;
struct TYPE_2__ {int hIlimit; int hLab2sRGB; } ;
typedef TYPE_1__ FakeCMYKParams ;


 int DbgThread () ;
 int cmsDoTransform (int ,int ,scalar_t__ const*,scalar_t__*,int) ;
 scalar_t__ cmsmin (scalar_t__,scalar_t__) ;

__attribute__((used)) static
cmsInt32Number ForwardSampler(cmsContext ContextID, register const cmsUInt16Number In[], cmsUInt16Number Out[], void* Cargo)
{
    FakeCMYKParams* p = (FakeCMYKParams*) Cargo;
    cmsFloat64Number rgb[3], cmyk[4];
    cmsFloat64Number c, m, y, k;

    cmsDoTransform(DbgThread(), p ->hLab2sRGB, In, rgb, 1);

    c = 1 - rgb[0];
    m = 1 - rgb[1];
    y = 1 - rgb[2];

    k = (c < m ? cmsmin(c, y) : cmsmin(m, y));





    cmyk[0] = c;
    cmyk[1] = m;
    cmyk[2] = y;
    cmyk[3] = k;

    cmsDoTransform(DbgThread(), p ->hIlimit, cmyk, Out, 1);

    return 1;
}
