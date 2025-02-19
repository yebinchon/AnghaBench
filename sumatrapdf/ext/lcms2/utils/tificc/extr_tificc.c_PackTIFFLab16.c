
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cmstransform_struct {int dummy; } ;
typedef unsigned char cmsUInt8Number ;
typedef struct _cmstransform_struct* cmsUInt32Number ;
typedef void* cmsUInt16Number ;
typedef int cmsContext ;


 int FromLabV4ToLabV2 (void*) ;
 int UTILS_UNUSED_PARAMETER (struct _cmstransform_struct*) ;

__attribute__((used)) static
unsigned char* PackTIFFLab16(cmsContext ContextID, struct _cmstransform_struct* CMMcargo,
                            register cmsUInt16Number wOut[],
                            register cmsUInt8Number* output,
                            register cmsUInt32Number Stride)
{
    int a, b;
    cmsUInt16Number* output16 = (cmsUInt16Number*) output;

    *output16++ = (cmsUInt16Number) FromLabV4ToLabV2(wOut[0]);

    a = FromLabV4ToLabV2(wOut[1]);
    b = FromLabV4ToLabV2(wOut[2]);

    *output16++ = (cmsUInt16Number) ((a < 0x7f00) ? (a + 0x8000) : (a - 0x8000));
    *output16++ = (cmsUInt16Number) ((b < 0x7f00) ? (b + 0x8000) : (b - 0x8000));

    return (cmsUInt8Number*) output16;

    UTILS_UNUSED_PARAMETER(Stride);
    UTILS_UNUSED_PARAMETER(CMMcargo);
}
