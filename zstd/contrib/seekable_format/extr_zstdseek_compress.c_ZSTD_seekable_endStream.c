
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int writingSeekTable; int framelog; scalar_t__ frameDSize; } ;
typedef TYPE_1__ ZSTD_seekable_CStream ;
typedef int ZSTD_outBuffer ;


 scalar_t__ ZSTD_isError (size_t const) ;
 size_t ZSTD_seekable_endFrame (TYPE_1__*,int *) ;
 size_t ZSTD_seekable_seekTableSize (int *) ;
 size_t ZSTD_seekable_writeSeekTable (int *,int *) ;

size_t ZSTD_seekable_endStream(ZSTD_seekable_CStream* zcs, ZSTD_outBuffer* output)
{
    if (!zcs->writingSeekTable && zcs->frameDSize) {
        const size_t endFrame = ZSTD_seekable_endFrame(zcs, output);
        if (ZSTD_isError(endFrame)) return endFrame;

        if (endFrame) return endFrame + ZSTD_seekable_seekTableSize(&zcs->framelog);
    }

    zcs->writingSeekTable = 1;

    return ZSTD_seekable_writeSeekTable(&zcs->framelog, output);
}
