
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int workSpace ;
typedef int U32 ;
typedef int HUF_DTable ;


 int HUF_DECOMPRESS_WORKSPACE_SIZE_U32 ;
 size_t HUF_decompress1X1_DCtx_wksp (int *,void*,size_t,void const*,size_t,int *,int) ;

size_t HUF_decompress1X1_DCtx(HUF_DTable* DCtx, void* dst, size_t dstSize,
                              const void* cSrc, size_t cSrcSize)
{
    U32 workSpace[HUF_DECOMPRESS_WORKSPACE_SIZE_U32];
    return HUF_decompress1X1_DCtx_wksp(DCtx, dst, dstSize, cSrc, cSrcSize,
                                       workSpace, sizeof(workSpace));
}
