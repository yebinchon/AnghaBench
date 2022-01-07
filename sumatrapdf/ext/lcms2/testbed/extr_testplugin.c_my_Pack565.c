
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt8Number ;
typedef int cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int cmsContext ;
typedef int _cmsTRANSFORM ;


 scalar_t__ floor (int) ;

cmsUInt8Number* my_Pack565(cmsContext ContextID, register _cmsTRANSFORM* info,
                           register cmsUInt16Number wOut[],
                           register cmsUInt8Number* output,
                           register cmsUInt32Number Stride)
{

    register cmsUInt16Number pixel;
    int r, g, b;

    r = (int) floor(( wOut[2] * 31) / 65535.0 + 0.5);
    g = (int) floor(( wOut[1] * 63) / 65535.0 + 0.5);
    b = (int) floor(( wOut[0] * 31) / 65535.0 + 0.5);


    pixel = (r & 31) | (( g & 63) << 5) | ((b & 31) << 11);


    *(cmsUInt16Number*) output = pixel;
    return output + 2;
}
