
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZBUFF_CCtx ;


 int * ZSTD_createCStream () ;

ZBUFF_CCtx* ZBUFF_createCCtx(void)
{
    return ZSTD_createCStream();
}
