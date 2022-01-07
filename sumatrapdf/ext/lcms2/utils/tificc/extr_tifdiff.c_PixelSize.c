
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;


 size_t T_BYTES (int ) ;
 size_t T_CHANNELS (int ) ;
 size_t T_EXTRA (int ) ;

__attribute__((used)) static
size_t PixelSize(cmsUInt32Number dwFormat)
{
    return T_BYTES(dwFormat) * (T_CHANNELS(dwFormat) + T_EXTRA(dwFormat));
}
