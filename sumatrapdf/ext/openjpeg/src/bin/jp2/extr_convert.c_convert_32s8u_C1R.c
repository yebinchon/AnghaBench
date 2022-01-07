
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t OPJ_SIZE_T ;
typedef scalar_t__ OPJ_INT32 ;
typedef scalar_t__ OPJ_BYTE ;



__attribute__((used)) static void convert_32s8u_C1R(const OPJ_INT32* pSrc, OPJ_BYTE* pDst,
                              OPJ_SIZE_T length)
{
    OPJ_SIZE_T i;
    for (i = 0; i < length; ++i) {
        pDst[i] = (OPJ_BYTE)pSrc[i];
    }
}
