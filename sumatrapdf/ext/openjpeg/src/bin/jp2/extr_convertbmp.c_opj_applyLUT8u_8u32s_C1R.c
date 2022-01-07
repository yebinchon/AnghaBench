
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t OPJ_UINT8 ;
typedef unsigned int OPJ_UINT32 ;
typedef scalar_t__ OPJ_INT32 ;



__attribute__((used)) static void opj_applyLUT8u_8u32s_C1R(
    OPJ_UINT8 const* pSrc, OPJ_INT32 srcStride,
    OPJ_INT32* pDst, OPJ_INT32 dstStride,
    OPJ_UINT8 const* pLUT,
    OPJ_UINT32 width, OPJ_UINT32 height)
{
    OPJ_UINT32 y;

    for (y = height; y != 0U; --y) {
        OPJ_UINT32 x;

        for (x = 0; x < width; x++) {
            pDst[x] = (OPJ_INT32)pLUT[pSrc[x]];
        }
        pSrc += srcStride;
        pDst += dstStride;
    }
}
