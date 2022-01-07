
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_customMem ;
typedef int ZBUFF_CCtx ;


 int * ZSTD_createCStream_advanced (int ) ;

ZBUFF_CCtx* ZBUFF_createCCtx_advanced(ZSTD_customMem customMem)
{
    return ZSTD_createCStream_advanced(customMem);
}
