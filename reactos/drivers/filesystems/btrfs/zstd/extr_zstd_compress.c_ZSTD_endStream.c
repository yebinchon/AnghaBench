
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ pos; scalar_t__ size; } ;
typedef TYPE_3__ ZSTD_outBuffer ;
struct TYPE_14__ {int member_2; int member_1; int * member_0; } ;
typedef TYPE_4__ ZSTD_inBuffer ;
struct TYPE_11__ {int checksumFlag; } ;
struct TYPE_12__ {TYPE_1__ fParams; } ;
struct TYPE_15__ {size_t const outBuffContentSize; size_t const outBuffFlushedSize; TYPE_2__ appliedParams; scalar_t__ frameEnded; } ;
typedef TYPE_5__ ZSTD_CStream ;
typedef int U32 ;


 int CHECK_F (int ) ;
 int DEBUGLOG (int,char*,int ) ;
 size_t ERROR (int ) ;
 int GENERIC ;
 size_t ZSTD_BLOCKHEADERSIZE ;
 int ZSTD_compressStream_generic (TYPE_5__*,TYPE_3__*,TYPE_4__*,int ) ;
 int ZSTD_e_end ;

size_t ZSTD_endStream(ZSTD_CStream* zcs, ZSTD_outBuffer* output)
{
    ZSTD_inBuffer input = { ((void*)0), 0, 0 };
    if (output->pos > output->size) return ERROR(GENERIC);
    CHECK_F( ZSTD_compressStream_generic(zcs, output, &input, ZSTD_e_end) );
    { size_t const lastBlockSize = zcs->frameEnded ? 0 : ZSTD_BLOCKHEADERSIZE;
        size_t const checksumSize = zcs->frameEnded ? 0 : zcs->appliedParams.fParams.checksumFlag * 4;
        size_t const toFlush = zcs->outBuffContentSize - zcs->outBuffFlushedSize + lastBlockSize + checksumSize;
        DEBUGLOG(4, "ZSTD_endStream : remaining to flush : %u", (U32)toFlush);
        return toFlush;
    }
}
