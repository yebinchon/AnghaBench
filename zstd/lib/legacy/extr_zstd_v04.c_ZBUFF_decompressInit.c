
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc; scalar_t__ dictSize; scalar_t__ outEnd; scalar_t__ outStart; scalar_t__ inPos; scalar_t__ hPos; int stage; } ;
typedef TYPE_1__ ZBUFF_DCtx ;


 int ZBUFFds_readHeader ;
 size_t ZSTD_resetDCtx (int ) ;

__attribute__((used)) static size_t ZBUFF_decompressInit(ZBUFF_DCtx* zbc)
{
    zbc->stage = ZBUFFds_readHeader;
    zbc->hPos = zbc->inPos = zbc->outStart = zbc->outEnd = zbc->dictSize = 0;
    return ZSTD_resetDCtx(zbc->zc);
}
