
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ U32 ;
typedef int HUF_DTable ;


 size_t ERROR (int ) ;
 size_t HUF_decompress4X1_DCtx_wksp_bmi2 (int *,void*,size_t,void const*,size_t,void*,size_t,int) ;
 size_t HUF_decompress4X2_DCtx_wksp_bmi2 (int *,void*,size_t,void const*,size_t,void*,size_t,int) ;
 scalar_t__ HUF_selectDecoder (size_t,size_t) ;
 int corruption_detected ;
 int dstSize_tooSmall ;

size_t HUF_decompress4X_hufOnly_wksp_bmi2(HUF_DTable* dctx, void* dst, size_t dstSize, const void* cSrc, size_t cSrcSize, void* workSpace, size_t wkspSize, int bmi2)
{

    if (dstSize == 0) return ERROR(dstSize_tooSmall);
    if (cSrcSize == 0) return ERROR(corruption_detected);

    { U32 const algoNb = HUF_selectDecoder(dstSize, cSrcSize);
        return algoNb ? HUF_decompress4X2_DCtx_wksp_bmi2(dctx, dst, dstSize, cSrc, cSrcSize, workSpace, wkspSize, bmi2) :
                        HUF_decompress4X1_DCtx_wksp_bmi2(dctx, dst, dstSize, cSrc, cSrcSize, workSpace, wkspSize, bmi2);
    }
}
