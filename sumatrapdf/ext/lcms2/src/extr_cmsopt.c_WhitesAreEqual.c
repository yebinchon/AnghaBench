
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t cmsUInt32Number ;
typedef scalar_t__ cmsUInt16Number ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 int abs (scalar_t__) ;

__attribute__((used)) static
cmsBool WhitesAreEqual(cmsUInt32Number n, cmsUInt16Number White1[], cmsUInt16Number White2[] )
{
    cmsUInt32Number i;

    for (i=0; i < n; i++) {

        if (abs(White1[i] - White2[i]) > 0xf000) return TRUE;
        if (White1[i] != White2[i]) return FALSE;
    }
    return TRUE;
}
