
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv04_Dctx ;


 size_t ZSTD_nextSrcSizeToDecompress (int *) ;

size_t ZSTDv04_nextSrcSizeToDecompress(ZSTDv04_Dctx* dctx)
{
    return ZSTD_nextSrcSizeToDecompress(dctx);
}
