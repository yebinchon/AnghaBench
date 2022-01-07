
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int windowLog; } ;
typedef TYPE_2__ ZSTD_compressionParameters ;
struct TYPE_6__ {TYPE_2__ cParams; } ;
struct TYPE_8__ {TYPE_1__ appliedParams; } ;
typedef TYPE_3__ ZSTD_CCtx ;
typedef int U32 ;


 size_t MIN (int ,int) ;
 int ZSTD_BLOCKSIZE_MAX ;
 int ZSTD_checkCParams (TYPE_2__ const) ;
 int assert (int) ;

size_t ZSTD_getBlockSize(const ZSTD_CCtx* cctx)
{
    ZSTD_compressionParameters const cParams = cctx->appliedParams.cParams;
    assert(!ZSTD_checkCParams(cParams));
    return MIN (ZSTD_BLOCKSIZE_MAX, (U32)1 << cParams.windowLog);
}
