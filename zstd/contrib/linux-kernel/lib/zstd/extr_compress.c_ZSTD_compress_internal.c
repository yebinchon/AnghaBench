
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_parameters ;
typedef int ZSTD_CCtx ;


 int CHECK_F (int ) ;
 int ZSTD_compressBegin_internal (int *,void const*,size_t,int ,size_t) ;
 size_t ZSTD_compressEnd (int *,void*,size_t,void const*,size_t) ;

__attribute__((used)) static size_t ZSTD_compress_internal(ZSTD_CCtx *cctx, void *dst, size_t dstCapacity, const void *src, size_t srcSize, const void *dict, size_t dictSize,
         ZSTD_parameters params)
{
 CHECK_F(ZSTD_compressBegin_internal(cctx, dict, dictSize, params, srcSize));
 return ZSTD_compressEnd(cctx, dst, dstCapacity, src, srcSize);
}
