
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int cmsBool ;


 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static
cmsBool GammaTableEquals(cmsUInt16Number* g1, cmsUInt16Number* g2, cmsUInt32Number nEntries)
{
    return memcmp(g1, g2, nEntries* sizeof(cmsUInt16Number)) == 0;
}
