
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_UINT32 ;
typedef size_t OPJ_SIZE_T ;
typedef int OPJ_INT32 ;
typedef void* OPJ_BYTE ;



__attribute__((used)) static void convert_32s16u_C1R(const OPJ_INT32* pSrc, OPJ_BYTE* pDst,
                               OPJ_SIZE_T length)
{
    OPJ_SIZE_T i;
    for (i = 0; i < length; i++) {
        OPJ_UINT32 val = (OPJ_UINT32)pSrc[i];
        *pDst++ = (OPJ_BYTE)(val >> 8);
        *pDst++ = (OPJ_BYTE)val;
    }
}
