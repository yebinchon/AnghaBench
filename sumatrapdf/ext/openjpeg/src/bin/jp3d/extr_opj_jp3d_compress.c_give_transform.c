
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_TRANSFORM ;


 int TRF_2D_DWT ;
 int TRF_3D_DWT ;
 int TRF_UNKNOWN ;
 scalar_t__ strncmp (char*,char*,int) ;

OPJ_TRANSFORM give_transform(char transform[4])
{
    if (strncmp(transform, "2DWT", 4) == 0) {
        return TRF_2D_DWT;
    }
    if (strncmp(transform, "3DWT", 4) == 0) {
        return TRF_3D_DWT;
    }
    return TRF_UNKNOWN;
}
