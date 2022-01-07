
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_CCtx ;


 int DEBUGLOG (int,char*,unsigned int) ;
 size_t ZSTD_compress_usingDict (int *,void*,size_t,void const*,size_t,int *,int ,int) ;
 int assert (int ) ;

size_t ZSTD_compressCCtx(ZSTD_CCtx* cctx,
                         void* dst, size_t dstCapacity,
                   const void* src, size_t srcSize,
                         int compressionLevel)
{
    DEBUGLOG(4, "ZSTD_compressCCtx (srcSize=%u)", (unsigned)srcSize);
    assert(cctx != ((void*)0));
    return ZSTD_compress_usingDict(cctx, dst, dstCapacity, src, srcSize, ((void*)0), 0, compressionLevel);
}
