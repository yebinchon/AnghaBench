
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t OPJ_SIZE_T ;
typedef int OPJ_INT32 ;



__attribute__((used)) static void convert_32s_C4P4(const OPJ_INT32* pSrc, OPJ_INT32* const* pDst,
                             OPJ_SIZE_T length)
{
    OPJ_SIZE_T i;
    OPJ_INT32* pDst0 = pDst[0];
    OPJ_INT32* pDst1 = pDst[1];
    OPJ_INT32* pDst2 = pDst[2];
    OPJ_INT32* pDst3 = pDst[3];

    for (i = 0; i < length; i++) {
        pDst0[i] = pSrc[4 * i + 0];
        pDst1[i] = pSrc[4 * i + 1];
        pDst2[i] = pSrc[4 * i + 2];
        pDst3[i] = pSrc[4 * i + 3];
    }
}
