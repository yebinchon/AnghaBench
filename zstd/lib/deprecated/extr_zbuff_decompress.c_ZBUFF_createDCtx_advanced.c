
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_customMem ;
typedef int ZBUFF_DCtx ;


 int * ZSTD_createDStream_advanced (int ) ;

ZBUFF_DCtx* ZBUFF_createDCtx_advanced(ZSTD_customMem customMem)
{
    return ZSTD_createDStream_advanced(customMem);
}
