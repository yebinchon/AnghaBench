
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ OPJ_UINT16 ;
typedef size_t OPJ_SIZE_T ;
typedef scalar_t__ OPJ_INT32 ;



__attribute__((used)) static void tif_32sto16u(const OPJ_INT32* pSrc, OPJ_UINT16* pDst,
                         OPJ_SIZE_T length)
{
    OPJ_SIZE_T i;
    for (i = 0; i < length; ++i) {
        pDst[i] = (OPJ_UINT16)pSrc[i];
    }
}
