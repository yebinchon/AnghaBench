
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef double cmsUInt16Number ;
typedef int cmsInt32Number ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;
struct TYPE_2__ {int sRGB2Lab; } ;
typedef TYPE_1__ FakeCMYKParams ;


 int Clip (int) ;
 int DbgThread () ;
 int cmsDoTransform (int ,int ,int*,double*,int) ;

__attribute__((used)) static
cmsInt32Number ReverseSampler(cmsContext ContextID, register const cmsUInt16Number In[], register cmsUInt16Number Out[], register void* Cargo)
{
    FakeCMYKParams* p = (FakeCMYKParams*) Cargo;
    cmsFloat64Number c, m, y, k, rgb[3];

    c = In[0] / 65535.0;
    m = In[1] / 65535.0;
    y = In[2] / 65535.0;
    k = In[3] / 65535.0;

    if (k == 0) {

        rgb[0] = Clip(1 - c);
        rgb[1] = Clip(1 - m);
        rgb[2] = Clip(1 - y);
    }
    else
        if (k == 1) {

            rgb[0] = rgb[1] = rgb[2] = 0;
        }
        else {

            rgb[0] = Clip((1 - c) * (1 - k));
            rgb[1] = Clip((1 - m) * (1 - k));
            rgb[2] = Clip((1 - y) * (1 - k));
        }

        cmsDoTransform(DbgThread(), p ->sRGB2Lab, rgb, Out, 1);
        return 1;
}
