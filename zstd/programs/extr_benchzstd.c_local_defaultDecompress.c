
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t size; size_t pos; void* dst; } ;
typedef TYPE_1__ ZSTD_outBuffer ;
struct TYPE_6__ {size_t size; scalar_t__ pos; void const* src; } ;
typedef TYPE_2__ ZSTD_inBuffer ;
typedef int ZSTD_DCtx ;


 size_t ZSTD_decompressStream (int * const,TYPE_1__*,TYPE_2__*) ;
 int ZSTD_error_dstSize_tooSmall ;
 scalar_t__ ZSTD_isError (size_t) ;

__attribute__((used)) static size_t local_defaultDecompress(
                    const void* srcBuffer, size_t srcSize,
                    void* dstBuffer, size_t dstCapacity,
                    void* addArgs)
{
    size_t moreToFlush = 1;
    ZSTD_DCtx* const dctx = (ZSTD_DCtx*)addArgs;
    ZSTD_inBuffer in;
    ZSTD_outBuffer out;
    in.src = srcBuffer; in.size = srcSize; in.pos = 0;
    out.dst = dstBuffer; out.size = dstCapacity; out.pos = 0;
    while (moreToFlush) {
        if(out.pos == out.size) {
            return (size_t)-ZSTD_error_dstSize_tooSmall;
        }
        moreToFlush = ZSTD_decompressStream(dctx, &out, &in);
        if (ZSTD_isError(moreToFlush)) {
            return moreToFlush;
        }
    }
    return out.pos;

}
