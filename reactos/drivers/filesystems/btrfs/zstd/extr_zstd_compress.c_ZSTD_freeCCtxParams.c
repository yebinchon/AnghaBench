
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int customMem; } ;
typedef TYPE_1__ ZSTD_CCtx_params ;


 int ZSTD_free (TYPE_1__*,int ) ;

size_t ZSTD_freeCCtxParams(ZSTD_CCtx_params* params)
{
    if (params == ((void*)0)) { return 0; }
    ZSTD_free(params, params->customMem);
    return 0;
}
