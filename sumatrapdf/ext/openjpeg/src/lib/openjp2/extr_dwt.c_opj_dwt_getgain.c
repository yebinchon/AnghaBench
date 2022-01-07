
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_UINT32 ;



OPJ_UINT32 opj_dwt_getgain(OPJ_UINT32 orient)
{
    if (orient == 0) {
        return 0;
    }
    if (orient == 1 || orient == 2) {
        return 1;
    }
    return 2;
}
