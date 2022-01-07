
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_CCtx ;


 int * ZSTD_createCCtx () ;
 int ZSTD_freeCCtx (int * const) ;
 int assert (int ) ;
 size_t local_ZSTD_compressStream (void const*,size_t,void*,size_t,void*) ;

__attribute__((used)) static size_t
local_ZSTD_compressStream_freshCCtx(const void* src, size_t srcSize,
                          void* dst, size_t dstCapacity,
                          void* payload)
{
    ZSTD_CCtx* const cctx = ZSTD_createCCtx();
    size_t r;
    assert(cctx != ((void*)0));

    r = local_ZSTD_compressStream(src, srcSize, dst, dstCapacity, payload);

    ZSTD_freeCCtx(cctx);

    return r;
}
