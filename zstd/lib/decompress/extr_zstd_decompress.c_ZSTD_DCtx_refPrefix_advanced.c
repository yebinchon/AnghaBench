
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ZSTD_dictContentType_e ;
struct TYPE_4__ {int dictUses; } ;
typedef TYPE_1__ ZSTD_DCtx ;


 int FORWARD_IF_ERROR (int ) ;
 int ZSTD_DCtx_loadDictionary_advanced (TYPE_1__*,void const*,size_t,int ,int ) ;
 int ZSTD_dlm_byRef ;
 int ZSTD_use_once ;

size_t ZSTD_DCtx_refPrefix_advanced(ZSTD_DCtx* dctx, const void* prefix, size_t prefixSize, ZSTD_dictContentType_e dictContentType)
{
    FORWARD_IF_ERROR(ZSTD_DCtx_loadDictionary_advanced(dctx, prefix, prefixSize, ZSTD_dlm_byRef, dictContentType));
    dctx->dictUses = ZSTD_use_once;
    return 0;
}
