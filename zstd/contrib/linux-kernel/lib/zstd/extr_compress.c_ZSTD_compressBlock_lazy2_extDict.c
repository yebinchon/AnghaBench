
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_CCtx ;


 int ZSTD_compressBlock_lazy_extDict_generic (int *,void const*,size_t,int ,int) ;

__attribute__((used)) static void ZSTD_compressBlock_lazy2_extDict(ZSTD_CCtx *ctx, const void *src, size_t srcSize)
{
 ZSTD_compressBlock_lazy_extDict_generic(ctx, src, srcSize, 0, 2);
}
