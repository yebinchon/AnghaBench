
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt8Number ;
typedef scalar_t__ cmsUInt16Number ;
typedef double cmsFloat64Number ;


 int floor (double) ;

__attribute__((used)) static
cmsUInt8Number Word2Byte(cmsUInt16Number w)
{
    return (cmsUInt8Number) floor((cmsFloat64Number) w / 257.0 + 0.5);
}
