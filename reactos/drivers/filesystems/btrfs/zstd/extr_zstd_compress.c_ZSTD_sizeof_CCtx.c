
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t workSpaceSize; int cdictLocal; } ;
typedef TYPE_1__ ZSTD_CCtx ;


 size_t ZSTD_sizeof_CDict (int ) ;
 size_t ZSTD_sizeof_mtctx (TYPE_1__ const*) ;

size_t ZSTD_sizeof_CCtx(const ZSTD_CCtx* cctx)
{
    if (cctx==((void*)0)) return 0;
    return sizeof(*cctx) + cctx->workSpaceSize
           + ZSTD_sizeof_CDict(cctx->cdictLocal)
           + ZSTD_sizeof_mtctx(cctx);
}
