
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_UINT32 ;
typedef unsigned int OPJ_SIZE_T ;
typedef scalar_t__ OPJ_INT32 ;
typedef int OPJ_BYTE ;



__attribute__((used)) static void convert_2u32s_C1R(const OPJ_BYTE* pSrc, OPJ_INT32* pDst,
                              OPJ_SIZE_T length)
{
    OPJ_SIZE_T i;
    for (i = 0; i < (length & ~(OPJ_SIZE_T)3U); i += 4U) {
        OPJ_UINT32 val = *pSrc++;
        pDst[i + 0] = (OPJ_INT32)(val >> 6);
        pDst[i + 1] = (OPJ_INT32)((val >> 4) & 0x3U);
        pDst[i + 2] = (OPJ_INT32)((val >> 2) & 0x3U);
        pDst[i + 3] = (OPJ_INT32)(val & 0x3U);
    }
    if (length & 3U) {
        OPJ_UINT32 val = *pSrc++;
        length = length & 3U;
        pDst[i + 0] = (OPJ_INT32)(val >> 6);

        if (length > 1U) {
            pDst[i + 1] = (OPJ_INT32)((val >> 4) & 0x3U);
            if (length > 2U) {
                pDst[i + 2] = (OPJ_INT32)((val >> 2) & 0x3U);

            }
        }
    }
}
