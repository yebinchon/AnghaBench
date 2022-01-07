
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ nbActiveWorkers; scalar_t__ currentJobID; int flushed; int produced; scalar_t__ consumed; scalar_t__ ingested; } ;
typedef TYPE_2__ ZSTD_frameProgression ;
struct TYPE_7__ {scalar_t__ nbWorkers; } ;
struct TYPE_9__ {size_t inBuffPos; size_t inToCompress; int producedCSize; scalar_t__ consumedSrcSize; int * inBuff; int mtctx; TYPE_1__ appliedParams; } ;
typedef TYPE_3__ ZSTD_CCtx ;


 TYPE_2__ ZSTDMT_getFrameProgression (int ) ;
 size_t const ZSTD_BLOCKSIZE_MAX ;
 int assert (int) ;

ZSTD_frameProgression ZSTD_getFrameProgression(const ZSTD_CCtx* cctx)
{





    { ZSTD_frameProgression fp;
        size_t const buffered = (cctx->inBuff == ((void*)0)) ? 0 :
                                cctx->inBuffPos - cctx->inToCompress;
        if (buffered) assert(cctx->inBuffPos >= cctx->inToCompress);
        assert(buffered <= ZSTD_BLOCKSIZE_MAX);
        fp.ingested = cctx->consumedSrcSize + buffered;
        fp.consumed = cctx->consumedSrcSize;
        fp.produced = cctx->producedCSize;
        fp.flushed = cctx->producedCSize;
        fp.currentJobID = 0;
        fp.nbActiveWorkers = 0;
        return fp;
} }
