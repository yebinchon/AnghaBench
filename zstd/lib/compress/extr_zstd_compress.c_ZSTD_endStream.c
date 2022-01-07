
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ZSTD_outBuffer ;
struct TYPE_10__ {int member_2; int member_1; int * member_0; } ;
typedef TYPE_3__ ZSTD_inBuffer ;
struct TYPE_8__ {int checksumFlag; } ;
struct TYPE_9__ {scalar_t__ nbWorkers; TYPE_1__ fParams; } ;
struct TYPE_11__ {TYPE_2__ appliedParams; scalar_t__ frameEnded; } ;
typedef TYPE_4__ ZSTD_CStream ;


 int DEBUGLOG (int,char*,unsigned int) ;
 int FORWARD_IF_ERROR (size_t const) ;
 size_t ZSTD_BLOCKHEADERSIZE ;
 size_t ZSTD_compressStream2 (TYPE_4__*,int *,TYPE_3__*,int ) ;
 int ZSTD_e_end ;

size_t ZSTD_endStream(ZSTD_CStream* zcs, ZSTD_outBuffer* output)
{
    ZSTD_inBuffer input = { ((void*)0), 0, 0 };
    size_t const remainingToFlush = ZSTD_compressStream2(zcs, output, &input, ZSTD_e_end);
    FORWARD_IF_ERROR( remainingToFlush );
    if (zcs->appliedParams.nbWorkers > 0) return remainingToFlush;

    { size_t const lastBlockSize = zcs->frameEnded ? 0 : ZSTD_BLOCKHEADERSIZE;
        size_t const checksumSize = (size_t)(zcs->frameEnded ? 0 : zcs->appliedParams.fParams.checksumFlag * 4);
        size_t const toFlush = remainingToFlush + lastBlockSize + checksumSize;
        DEBUGLOG(4, "ZSTD_endStream : remaining to flush : %u", (unsigned)toFlush);
        return toFlush;
    }
}
