
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int lastBlock; int origSize; int blockType; } ;
typedef TYPE_2__ blockProperties_t ;
struct TYPE_9__ {size_t frameContentSize; int checksumFlag; } ;
struct TYPE_11__ {size_t expected; int stage; size_t headerBuffer; size_t headerSize; size_t decodedSize; char* previousDstEnd; int xxhState; TYPE_1__ fParams; int rleSize; int bType; int format; } ;
typedef TYPE_3__ ZSTD_DCtx ;
typedef int U32 ;


 int CHECK_F (int ) ;
 int DEBUGLOG (int,char*,...) ;
 size_t ERROR (int ) ;
 int GENERIC ;
 int MEM_readLE32 (size_t) ;
 scalar_t__ XXH64_digest (int *) ;
 int XXH64_update (int *,void*,size_t) ;
 size_t ZSTD_CONTENTSIZE_UNKNOWN ;
 size_t ZSTD_FRAMEIDSIZE ;
 int ZSTD_MAGIC_SKIPPABLE_START ;
 void* ZSTD_blockHeaderSize ;
 int ZSTD_checkContinuity (TYPE_3__*,void*) ;
 size_t ZSTD_copyRawBlock (void*,size_t,void const*,size_t) ;
 int ZSTD_decodeFrameHeader (TYPE_3__*,size_t,size_t) ;
 size_t ZSTD_decompressBlock_internal (TYPE_3__*,void*,size_t,void const*,size_t,int) ;
 int ZSTD_f_zstd1 ;
 size_t ZSTD_frameHeaderSize_internal (void const*,size_t,int ) ;
 size_t ZSTD_getcBlockSize (void const*,void*,TYPE_2__*) ;
 int ZSTD_isError (size_t const) ;
 size_t ZSTD_setRleBlock (void*,size_t,void const*,size_t,int ) ;
 size_t ZSTD_skippableHeaderSize ;
 int assert (int) ;




 int checksum_wrong ;
 int corruption_detected ;
 int memcpy (size_t,void const*,size_t) ;
 int srcSize_wrong ;

size_t ZSTD_decompressContinue(ZSTD_DCtx* dctx, void* dst, size_t dstCapacity, const void* src, size_t srcSize)
{
    DEBUGLOG(5, "ZSTD_decompressContinue (srcSize:%u)", (U32)srcSize);

    if (srcSize != dctx->expected) return ERROR(srcSize_wrong);
    if (dstCapacity) ZSTD_checkContinuity(dctx, dst);

    switch (dctx->stage)
    {
    case 133 :
        assert(src != ((void*)0));
        if (dctx->format == ZSTD_f_zstd1) {
            assert(srcSize >= ZSTD_FRAMEIDSIZE);
            if ((MEM_readLE32(src) & 0xFFFFFFF0U) == ZSTD_MAGIC_SKIPPABLE_START) {
                memcpy(dctx->headerBuffer, src, srcSize);
                dctx->expected = ZSTD_skippableHeaderSize - srcSize;
                dctx->stage = 136;
                return 0;
        } }
        dctx->headerSize = ZSTD_frameHeaderSize_internal(src, srcSize, dctx->format);
        if (ZSTD_isError(dctx->headerSize)) return dctx->headerSize;
        memcpy(dctx->headerBuffer, src, srcSize);
        dctx->expected = dctx->headerSize - srcSize;
        dctx->stage = 137;
        return 0;

    case 137:
        assert(src != ((void*)0));
        memcpy(dctx->headerBuffer + (dctx->headerSize - srcSize), src, srcSize);
        CHECK_F(ZSTD_decodeFrameHeader(dctx, dctx->headerBuffer, dctx->headerSize));
        dctx->expected = ZSTD_blockHeaderSize;
        dctx->stage = 138;
        return 0;

    case 138:
        { blockProperties_t bp;
            size_t const cBlockSize = ZSTD_getcBlockSize(src, ZSTD_blockHeaderSize, &bp);
            if (ZSTD_isError(cBlockSize)) return cBlockSize;
            dctx->expected = cBlockSize;
            dctx->bType = bp.blockType;
            dctx->rleSize = bp.origSize;
            if (cBlockSize) {
                dctx->stage = bp.lastBlock ? 134 : 135;
                return 0;
            }

            if (bp.lastBlock) {
                if (dctx->fParams.checksumFlag) {
                    dctx->expected = 4;
                    dctx->stage = 139;
                } else {
                    dctx->expected = 0;
                    dctx->stage = 133;
                }
            } else {
                dctx->expected = ZSTD_blockHeaderSize;
                dctx->stage = 138;
            }
            return 0;
        }

    case 134:
    case 135:
        DEBUGLOG(5, "ZSTD_decompressContinue: case ZSTDds_decompressBlock");
        { size_t rSize;
            switch(dctx->bType)
            {
            case 131:
                DEBUGLOG(5, "ZSTD_decompressContinue: case bt_compressed");
                rSize = ZSTD_decompressBlock_internal(dctx, dst, dstCapacity, src, srcSize, 1);
                break;
            case 130 :
                rSize = ZSTD_copyRawBlock(dst, dstCapacity, src, srcSize);
                break;
            case 128 :
                rSize = ZSTD_setRleBlock(dst, dstCapacity, src, srcSize, dctx->rleSize);
                break;
            case 129 :
            default:
                return ERROR(corruption_detected);
            }
            if (ZSTD_isError(rSize)) return rSize;
            DEBUGLOG(5, "ZSTD_decompressContinue: decoded size from block : %u", (U32)rSize);
            dctx->decodedSize += rSize;
            if (dctx->fParams.checksumFlag) XXH64_update(&dctx->xxhState, dst, rSize);

            if (dctx->stage == 134) {
                DEBUGLOG(4, "ZSTD_decompressContinue: decoded size from frame : %u", (U32)dctx->decodedSize);
                if (dctx->fParams.frameContentSize != ZSTD_CONTENTSIZE_UNKNOWN) {
                    if (dctx->decodedSize != dctx->fParams.frameContentSize) {
                        return ERROR(corruption_detected);
                } }
                if (dctx->fParams.checksumFlag) {
                    dctx->expected = 4;
                    dctx->stage = 139;
                } else {
                    dctx->expected = 0;
                    dctx->stage = 133;
                }
            } else {
                dctx->stage = 138;
                dctx->expected = ZSTD_blockHeaderSize;
                dctx->previousDstEnd = (char*)dst + rSize;
            }
            return rSize;
        }

    case 139:
        assert(srcSize == 4);
        { U32 const h32 = (U32)XXH64_digest(&dctx->xxhState);
            U32 const check32 = MEM_readLE32(src);
            DEBUGLOG(4, "ZSTD_decompressContinue: checksum : calculated %08X :: %08X read", h32, check32);
            if (check32 != h32) return ERROR(checksum_wrong);
            dctx->expected = 0;
            dctx->stage = 133;
            return 0;
        }

    case 136:
        assert(src != ((void*)0));
        assert(srcSize <= ZSTD_skippableHeaderSize);
        memcpy(dctx->headerBuffer + (ZSTD_skippableHeaderSize - srcSize), src, srcSize);
        dctx->expected = MEM_readLE32(dctx->headerBuffer + ZSTD_FRAMEIDSIZE);
        dctx->stage = 132;
        return 0;

    case 132:
        dctx->expected = 0;
        dctx->stage = 133;
        return 0;

    default:
        return ERROR(GENERIC);
    }
}
