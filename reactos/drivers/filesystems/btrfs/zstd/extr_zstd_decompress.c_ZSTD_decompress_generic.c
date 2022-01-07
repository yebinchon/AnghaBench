
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_outBuffer ;
typedef int ZSTD_inBuffer ;
typedef int ZSTD_DCtx ;


 size_t ZSTD_decompressStream (int *,int *,int *) ;

size_t ZSTD_decompress_generic(ZSTD_DCtx* dctx, ZSTD_outBuffer* output, ZSTD_inBuffer* input)
{
    return ZSTD_decompressStream(dctx, output, input);
}
