
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZSTD_BLOCKSIZE_MAX ;
 size_t ZSTD_blockHeaderSize ;
 size_t ZSTD_compressBound (int ) ;

size_t ZSTD_CStreamOutSize(void)
{
    return ZSTD_compressBound(ZSTD_BLOCKSIZE_MAX) + ZSTD_blockHeaderSize + 4 ;
}
