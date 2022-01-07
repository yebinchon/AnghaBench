
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t pos; size_t size; void* dst; } ;
typedef TYPE_1__ ZSTD_outBuffer ;
typedef int ZBUFF_CCtx ;


 size_t ZSTD_flushStream (int *,TYPE_1__*) ;

size_t ZBUFF_compressFlush(ZBUFF_CCtx* zbc, void* dst, size_t* dstCapacityPtr)
{
    size_t result;
    ZSTD_outBuffer outBuff;
    outBuff.dst = dst;
    outBuff.pos = 0;
    outBuff.size = *dstCapacityPtr;
    result = ZSTD_flushStream(zbc, &outBuff);
    *dstCapacityPtr = outBuff.pos;
    return result;
}
