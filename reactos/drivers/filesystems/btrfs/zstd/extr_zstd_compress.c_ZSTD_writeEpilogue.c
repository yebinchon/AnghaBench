
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ checksumFlag; } ;
struct TYPE_7__ {TYPE_1__ fParams; } ;
struct TYPE_6__ {scalar_t__ stage; int xxhState; TYPE_3__ appliedParams; } ;
typedef TYPE_2__ ZSTD_CCtx ;
typedef int U32 ;
typedef int BYTE ;


 int DEBUGLOG (int,char*,...) ;
 size_t ERROR (int ) ;
 int MEM_writeLE32 (int *,int const) ;
 scalar_t__ XXH64_digest (int *) ;
 scalar_t__ ZSTD_blockHeaderSize ;
 scalar_t__ ZSTD_isError (size_t) ;
 size_t ZSTD_writeFrameHeader (void*,size_t,TYPE_3__,int ,int ) ;
 scalar_t__ ZSTDcs_created ;
 scalar_t__ ZSTDcs_ending ;
 scalar_t__ ZSTDcs_init ;
 scalar_t__ ZSTDcs_ongoing ;
 scalar_t__ bt_raw ;
 int dstSize_tooSmall ;
 int stage_wrong ;

__attribute__((used)) static size_t ZSTD_writeEpilogue(ZSTD_CCtx* cctx, void* dst, size_t dstCapacity)
{
    BYTE* const ostart = (BYTE*)dst;
    BYTE* op = ostart;
    size_t fhSize = 0;

    DEBUGLOG(4, "ZSTD_writeEpilogue");
    if (cctx->stage == ZSTDcs_created) return ERROR(stage_wrong);


    if (cctx->stage == ZSTDcs_init) {
        fhSize = ZSTD_writeFrameHeader(dst, dstCapacity, cctx->appliedParams, 0, 0);
        if (ZSTD_isError(fhSize)) return fhSize;
        dstCapacity -= fhSize;
        op += fhSize;
        cctx->stage = ZSTDcs_ongoing;
    }

    if (cctx->stage != ZSTDcs_ending) {

        U32 const cBlockHeader24 = 1 + (((U32)bt_raw)<<1) + 0;
        if (dstCapacity<4) return ERROR(dstSize_tooSmall);
        MEM_writeLE32(op, cBlockHeader24);
        op += ZSTD_blockHeaderSize;
        dstCapacity -= ZSTD_blockHeaderSize;
    }

    if (cctx->appliedParams.fParams.checksumFlag) {
        U32 const checksum = (U32) XXH64_digest(&cctx->xxhState);
        if (dstCapacity<4) return ERROR(dstSize_tooSmall);
        DEBUGLOG(4, "ZSTD_writeEpilogue: write checksum : %08X", checksum);
        MEM_writeLE32(op, checksum);
        op += 4;
    }

    cctx->stage = ZSTDcs_created;
    return op-ostart;
}
