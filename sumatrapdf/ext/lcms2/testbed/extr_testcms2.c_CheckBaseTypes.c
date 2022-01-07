
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt8Number ;
typedef int cmsUInt64Number ;
typedef int cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int cmsU8Fixed8Number ;
typedef int cmsU16Fixed16Number ;
typedef int cmsSignature ;
typedef int cmsS15Fixed16Number ;
typedef int cmsInt8Number ;
typedef int cmsInt64Number ;
typedef int cmsInt32Number ;
typedef int cmsInt16Number ;
typedef int cmsFloat64Number ;
typedef int cmsFloat32Number ;



__attribute__((used)) static
cmsInt32Number CheckBaseTypes(void)
{





    if (sizeof(cmsUInt8Number) != 1) return 0;
    if (sizeof(cmsInt8Number) != 1) return 0;
    if (sizeof(cmsUInt16Number) != 2) return 0;
    if (sizeof(cmsInt16Number) != 2) return 0;
    if (sizeof(cmsUInt32Number) != 4) return 0;
    if (sizeof(cmsInt32Number) != 4) return 0;
    if (sizeof(cmsUInt64Number) != 8) return 0;
    if (sizeof(cmsInt64Number) != 8) return 0;
    if (sizeof(cmsFloat32Number) != 4) return 0;
    if (sizeof(cmsFloat64Number) != 8) return 0;
    if (sizeof(cmsSignature) != 4) return 0;
    if (sizeof(cmsU8Fixed8Number) != 2) return 0;
    if (sizeof(cmsS15Fixed16Number) != 4) return 0;
    if (sizeof(cmsU16Fixed16Number) != 4) return 0;

    return 1;
}
