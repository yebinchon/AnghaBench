
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__ const* workspace; } ;
struct TYPE_5__ {int localDict; TYPE_4__ workspace; } ;
typedef TYPE_1__ ZSTD_CCtx ;


 size_t ZSTD_cwksp_sizeof (TYPE_4__*) ;
 size_t ZSTD_sizeof_localDict (int ) ;
 size_t ZSTD_sizeof_mtctx (TYPE_1__ const*) ;

size_t ZSTD_sizeof_CCtx(const ZSTD_CCtx* cctx)
{
    if (cctx==((void*)0)) return 0;

    return (cctx->workspace.workspace == cctx ? 0 : sizeof(*cctx))
           + ZSTD_cwksp_sizeof(&cctx->workspace)
           + ZSTD_sizeof_localDict(cctx->localDict)
           + ZSTD_sizeof_mtctx(cctx);
}
