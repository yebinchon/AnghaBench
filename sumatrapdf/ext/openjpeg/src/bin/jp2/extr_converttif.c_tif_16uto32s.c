
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_UINT16 ;
typedef size_t OPJ_SIZE_T ;
typedef int OPJ_INT32 ;



__attribute__((used)) static void tif_16uto32s(const OPJ_UINT16* pSrc, OPJ_INT32* pDst,
                         OPJ_SIZE_T length)
{
    OPJ_SIZE_T i;
    for (i = 0; i < length; i++) {
        pDst[i] = pSrc[i];
    }
}
