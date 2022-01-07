
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t expected; } ;
typedef TYPE_1__ ZSTDv05_DCtx ;



size_t ZSTDv05_nextSrcSizeToDecompress(ZSTDv05_DCtx* dctx)
{
    return dctx->expected;
}
