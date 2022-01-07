
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_DDict ;
typedef int ZSTD_DCtx ;


 size_t ZSTD_decompressMultiFrame (int *,void*,size_t,void const*,size_t,int *,int ,int const*) ;

size_t ZSTD_decompress_usingDDict(ZSTD_DCtx* dctx,
                                  void* dst, size_t dstCapacity,
                            const void* src, size_t srcSize,
                            const ZSTD_DDict* ddict)
{

    return ZSTD_decompressMultiFrame(dctx, dst, dstCapacity, src, srcSize,
                                     ((void*)0), 0,
                                     ddict);
}
