
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int windowLog; } ;
struct TYPE_6__ {TYPE_1__ cParams; } ;
struct TYPE_7__ {TYPE_2__ params; } ;
typedef TYPE_3__ ZSTD_CCtx ;


 size_t MIN (int ,int) ;
 int ZSTD_BLOCKSIZE_ABSOLUTEMAX ;

size_t ZSTD_getBlockSizeMax(ZSTD_CCtx *cctx) { return MIN(ZSTD_BLOCKSIZE_ABSOLUTEMAX, 1 << cctx->params.cParams.windowLog); }
