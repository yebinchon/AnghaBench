
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int rawSeq ;
struct TYPE_8__ {size_t size; size_t capacity; scalar_t__ pos; int * seq; } ;
struct TYPE_6__ {int enableLdm; } ;
struct TYPE_7__ {TYPE_1__ ldmParams; } ;
struct TYPE_9__ {scalar_t__ stage; TYPE_3__ externSeqStore; TYPE_2__ appliedParams; } ;
typedef TYPE_4__ ZSTD_CCtx ;


 int RETURN_ERROR_IF (int,int ) ;
 scalar_t__ ZSTDcs_init ;
 int parameter_unsupported ;
 int stage_wrong ;

size_t ZSTD_referenceExternalSequences(ZSTD_CCtx* cctx, rawSeq* seq, size_t nbSeq)
{
    RETURN_ERROR_IF(cctx->stage != ZSTDcs_init, stage_wrong);
    RETURN_ERROR_IF(cctx->appliedParams.ldmParams.enableLdm,
                    parameter_unsupported);
    cctx->externSeqStore.seq = seq;
    cctx->externSeqStore.size = nbSeq;
    cctx->externSeqStore.capacity = nbSeq;
    cctx->externSeqStore.pos = 0;
    return 0;
}
