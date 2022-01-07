
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_UINT32 ;
typedef unsigned int OPJ_SIZE_T ;
typedef int OPJ_INT32 ;
typedef void* OPJ_BYTE ;



__attribute__((used)) static void convert_32s4u_C1R(const OPJ_INT32* pSrc, OPJ_BYTE* pDst,
                              OPJ_SIZE_T length)
{
    OPJ_SIZE_T i;
    for (i = 0; i < (length & ~(OPJ_SIZE_T)1U); i += 2U) {
        OPJ_UINT32 src0 = (OPJ_UINT32)pSrc[i + 0];
        OPJ_UINT32 src1 = (OPJ_UINT32)pSrc[i + 1];

        *pDst++ = (OPJ_BYTE)((src0 << 4) | src1);
    }

    if (length & 1U) {
        OPJ_UINT32 src0 = (OPJ_UINT32)pSrc[i + 0];
        *pDst++ = (OPJ_BYTE)((src0 << 4));
    }
}
