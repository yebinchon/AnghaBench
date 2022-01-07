
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cmstransform_struct {int dummy; } ;
typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int cmsContext ;


 double floor (int) ;

cmsUInt8Number* my_Unroll565(cmsContext ContextID, register struct _cmstransform_struct* nfo,
                            register cmsUInt16Number wIn[],
                            register cmsUInt8Number* accum,
                            register cmsUInt32Number Stride)
{
    cmsUInt16Number pixel = *(cmsUInt16Number*) accum;

    double r = floor(((double) (pixel & 31) * 65535.0) / 31.0 + 0.5);
    double g = floor((((pixel >> 5) & 63) * 65535.0) / 63.0 + 0.5);
    double b = floor((((pixel >> 11) & 31) * 65535.0) / 31.0 + 0.5);

    wIn[2] = (cmsUInt16Number) r;
    wIn[1] = (cmsUInt16Number) g;
    wIn[0] = (cmsUInt16Number) b;

    return accum + 2;
}
