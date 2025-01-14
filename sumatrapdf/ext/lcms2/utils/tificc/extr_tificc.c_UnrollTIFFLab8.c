
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cmstransform_struct {int dummy; } ;
typedef int cmsUInt8Number ;
typedef struct _cmstransform_struct* cmsUInt32Number ;
typedef scalar_t__ cmsUInt16Number ;
typedef int cmsContext ;


 scalar_t__ FromLabV2ToLabV4 (int) ;
 int UTILS_UNUSED_PARAMETER (struct _cmstransform_struct*) ;

__attribute__((used)) static
unsigned char* UnrollTIFFLab8(cmsContext ContextID, struct _cmstransform_struct* CMMcargo,
                              register cmsUInt16Number wIn[],
                              register cmsUInt8Number* accum,
                              register cmsUInt32Number Stride)
{
    wIn[0] = (cmsUInt16Number) FromLabV2ToLabV4((accum[0]) << 8);
    wIn[1] = (cmsUInt16Number) FromLabV2ToLabV4(((accum[1] > 127) ? (accum[1] - 128) : (accum[1] + 128)) << 8);
    wIn[2] = (cmsUInt16Number) FromLabV2ToLabV4(((accum[2] > 127) ? (accum[2] - 128) : (accum[2] + 128)) << 8);

    return accum + 3;

    UTILS_UNUSED_PARAMETER(Stride);
    UTILS_UNUSED_PARAMETER(CMMcargo);
}
