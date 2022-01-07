
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ flagRepeatTable; int * hufTableX4; int * dictEnd; int * vBase; int * base; int * previousDstEnd; int stage; int expected; } ;
typedef TYPE_1__ ZSTDv06_DCtx ;


 int HufLog ;
 int ZSTDds_getFrameHeaderSize ;
 int ZSTDv06_frameHeaderSize_min ;

size_t ZSTDv06_decompressBegin(ZSTDv06_DCtx* dctx)
{
    dctx->expected = ZSTDv06_frameHeaderSize_min;
    dctx->stage = ZSTDds_getFrameHeaderSize;
    dctx->previousDstEnd = ((void*)0);
    dctx->base = ((void*)0);
    dctx->vBase = ((void*)0);
    dctx->dictEnd = ((void*)0);
    dctx->hufTableX4[0] = HufLog;
    dctx->flagRepeatTable = 0;
    return 0;
}
