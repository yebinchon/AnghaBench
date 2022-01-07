
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int customFree; int customAlloc; } ;
typedef TYPE_2__ ZSTD_customMem ;
struct TYPE_7__ {int contentSizeFlag; } ;
struct TYPE_9__ {TYPE_1__ fParams; int compressionLevel; TYPE_2__ customMem; } ;
typedef TYPE_3__ ZSTD_CCtx_params ;


 int ZSTD_CLEVEL_DEFAULT ;
 scalar_t__ ZSTD_calloc (int,TYPE_2__) ;

__attribute__((used)) static ZSTD_CCtx_params* ZSTD_createCCtxParams_advanced(
        ZSTD_customMem customMem)
{
    ZSTD_CCtx_params* params;
    if (!customMem.customAlloc ^ !customMem.customFree) return ((void*)0);
    params = (ZSTD_CCtx_params*)ZSTD_calloc(
            sizeof(ZSTD_CCtx_params), customMem);
    if (!params) { return ((void*)0); }
    params->customMem = customMem;
    params->compressionLevel = ZSTD_CLEVEL_DEFAULT;
    params->fParams.contentSizeFlag = 1;
    return params;
}
