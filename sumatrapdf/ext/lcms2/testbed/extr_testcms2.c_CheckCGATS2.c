
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int junk ;
typedef int cmsUInt8Number ;
typedef int cmsInt32Number ;
typedef scalar_t__ cmsHANDLE ;


 int DbgThread () ;
 int cmsIT8Free (int ,scalar_t__) ;
 scalar_t__ cmsIT8LoadFromMem (int ,void const*,int) ;

__attribute__((used)) static
cmsInt32Number CheckCGATS2(void)
{
    cmsHANDLE handle;
    const cmsUInt8Number junk[] = { 0x0, 0xd, 0xd, 0xa, 0x20, 0xd, 0x20, 0x20, 0x20, 0x3a, 0x31, 0x3d, 0x3d, 0x3d, 0x3d };

    handle = cmsIT8LoadFromMem(0, (const void*)junk, sizeof(junk));
    if (handle)
        cmsIT8Free(DbgThread(), handle);

    return 1;
}
