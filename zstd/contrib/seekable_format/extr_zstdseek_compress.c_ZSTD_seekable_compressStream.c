
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ checksumFlag; } ;
struct TYPE_13__ {size_t maxFrameSize; size_t frameDSize; int frameCSize; int xxhState; TYPE_1__ framelog; int cstream; } ;
typedef TYPE_2__ ZSTD_seekable_CStream ;
struct TYPE_14__ {size_t pos; } ;
typedef TYPE_3__ ZSTD_outBuffer ;
struct TYPE_15__ {int pos; size_t size; size_t member_1; int member_2; int const* const member_0; scalar_t__ src; } ;
typedef TYPE_4__ ZSTD_inBuffer ;
typedef int BYTE ;


 size_t MIN (size_t,size_t) ;
 int XXH64_update (int *,int const* const,size_t) ;
 size_t ZSTD_compressStream (int ,TYPE_3__*,TYPE_4__*) ;
 scalar_t__ ZSTD_isError (size_t const) ;
 size_t ZSTD_seekable_endFrame (TYPE_2__*,TYPE_3__*) ;

size_t ZSTD_seekable_compressStream(ZSTD_seekable_CStream* zcs, ZSTD_outBuffer* output, ZSTD_inBuffer* input)
{
    const BYTE* const inBase = (const BYTE*) input->src + input->pos;
    size_t inLen = input->size - input->pos;

    inLen = MIN(inLen, (size_t)(zcs->maxFrameSize - zcs->frameDSize));


    if (inLen > 0) {
        ZSTD_inBuffer inTmp = { inBase, inLen, 0 };
        size_t const prevOutPos = output->pos;

        size_t const ret = ZSTD_compressStream(zcs->cstream, output, &inTmp);

        if (zcs->framelog.checksumFlag) {
            XXH64_update(&zcs->xxhState, inBase, inTmp.pos);
        }

        zcs->frameCSize += output->pos - prevOutPos;
        zcs->frameDSize += inTmp.pos;

        input->pos += inTmp.pos;

        if (ZSTD_isError(ret)) return ret;
    }

    if (zcs->maxFrameSize == zcs->frameDSize) {

        size_t const ret = ZSTD_seekable_endFrame(zcs, output);
        if (ZSTD_isError(ret)) return ret;


        return (size_t)zcs->maxFrameSize;
    }

    return (size_t)(zcs->maxFrameSize - zcs->frameDSize);
}
