#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  lastBlock; int /*<<< orphan*/  origSize; int /*<<< orphan*/  blockType; } ;
typedef  TYPE_2__ blockProperties_t ;
struct TYPE_9__ {size_t frameContentSize; int /*<<< orphan*/  checksumFlag; } ;
struct TYPE_11__ {size_t expected; int stage; size_t headerBuffer; size_t headerSize; size_t decodedSize; char* previousDstEnd; int /*<<< orphan*/  xxhState; TYPE_1__ fParams; int /*<<< orphan*/  rleSize; int /*<<< orphan*/  bType; int /*<<< orphan*/  format; } ;
typedef  TYPE_3__ ZSTD_DCtx ;
typedef  int U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 int FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*,size_t) ; 
 size_t ZSTD_CONTENTSIZE_UNKNOWN ; 
 size_t ZSTD_FRAMEIDSIZE ; 
 int ZSTD_MAGIC_SKIPPABLE_START ; 
 void* ZSTD_blockHeaderSize ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,void*) ; 
 size_t FUNC7 (void*,size_t,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,size_t,size_t) ; 
 size_t FUNC9 (TYPE_3__*,void*,size_t,void const*,size_t,int) ; 
 int /*<<< orphan*/  ZSTD_f_zstd1 ; 
 size_t FUNC10 (void const*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC11 (void const*,void*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (size_t const) ; 
 size_t FUNC13 (void*,size_t,void const*,size_t,int /*<<< orphan*/ ) ; 
 size_t ZSTD_skippableHeaderSize ; 
#define  ZSTDds_checkChecksum 139 
#define  ZSTDds_decodeBlockHeader 138 
#define  ZSTDds_decodeFrameHeader 137 
#define  ZSTDds_decodeSkippableHeader 136 
#define  ZSTDds_decompressBlock 135 
#define  ZSTDds_decompressLastBlock 134 
#define  ZSTDds_getFrameHeaderSize 133 
#define  ZSTDds_skipFrame 132 
 int /*<<< orphan*/  FUNC14 (int) ; 
#define  bt_compressed 131 
#define  bt_raw 130 
#define  bt_reserved 129 
#define  bt_rle 128 
 int /*<<< orphan*/  checksum_wrong ; 
 int /*<<< orphan*/  corruption_detected ; 
 int /*<<< orphan*/  FUNC15 (size_t,void const*,size_t) ; 
 int /*<<< orphan*/  srcSize_wrong ; 

size_t FUNC16(ZSTD_DCtx* dctx, void* dst, size_t dstCapacity, const void* src, size_t srcSize)
{
    FUNC1(5, "ZSTD_decompressContinue (srcSize:%u)", (U32)srcSize);
    /* Sanity check */
    if (srcSize != dctx->expected) return FUNC2(srcSize_wrong);  /* not allowed */
    if (dstCapacity) FUNC6(dctx, dst);

    switch (dctx->stage)
    {
    case ZSTDds_getFrameHeaderSize :
        FUNC14(src != NULL);
        if (dctx->format == ZSTD_f_zstd1) {  /* allows header */
            FUNC14(srcSize >= ZSTD_FRAMEIDSIZE);  /* to read skippable magic number */
            if ((FUNC3(src) & 0xFFFFFFF0U) == ZSTD_MAGIC_SKIPPABLE_START) {        /* skippable frame */
                FUNC15(dctx->headerBuffer, src, srcSize);
                dctx->expected = ZSTD_skippableHeaderSize - srcSize;  /* remaining to load to get full skippable frame header */
                dctx->stage = ZSTDds_decodeSkippableHeader;
                return 0;
        }   }
        dctx->headerSize = FUNC10(src, srcSize, dctx->format);
        if (FUNC12(dctx->headerSize)) return dctx->headerSize;
        FUNC15(dctx->headerBuffer, src, srcSize);
        dctx->expected = dctx->headerSize - srcSize;
        dctx->stage = ZSTDds_decodeFrameHeader;
        return 0;

    case ZSTDds_decodeFrameHeader:
        FUNC14(src != NULL);
        FUNC15(dctx->headerBuffer + (dctx->headerSize - srcSize), src, srcSize);
        FUNC0(FUNC8(dctx, dctx->headerBuffer, dctx->headerSize));
        dctx->expected = ZSTD_blockHeaderSize;
        dctx->stage = ZSTDds_decodeBlockHeader;
        return 0;

    case ZSTDds_decodeBlockHeader:
        {   blockProperties_t bp;
            size_t const cBlockSize = FUNC11(src, ZSTD_blockHeaderSize, &bp);
            if (FUNC12(cBlockSize)) return cBlockSize;
            dctx->expected = cBlockSize;
            dctx->bType = bp.blockType;
            dctx->rleSize = bp.origSize;
            if (cBlockSize) {
                dctx->stage = bp.lastBlock ? ZSTDds_decompressLastBlock : ZSTDds_decompressBlock;
                return 0;
            }
            /* empty block */
            if (bp.lastBlock) {
                if (dctx->fParams.checksumFlag) {
                    dctx->expected = 4;
                    dctx->stage = ZSTDds_checkChecksum;
                } else {
                    dctx->expected = 0; /* end of frame */
                    dctx->stage = ZSTDds_getFrameHeaderSize;
                }
            } else {
                dctx->expected = ZSTD_blockHeaderSize;  /* jump to next header */
                dctx->stage = ZSTDds_decodeBlockHeader;
            }
            return 0;
        }

    case ZSTDds_decompressLastBlock:
    case ZSTDds_decompressBlock:
        FUNC1(5, "ZSTD_decompressContinue: case ZSTDds_decompressBlock");
        {   size_t rSize;
            switch(dctx->bType)
            {
            case bt_compressed:
                FUNC1(5, "ZSTD_decompressContinue: case bt_compressed");
                rSize = FUNC9(dctx, dst, dstCapacity, src, srcSize, /* frame */ 1);
                break;
            case bt_raw :
                rSize = FUNC7(dst, dstCapacity, src, srcSize);
                break;
            case bt_rle :
                rSize = FUNC13(dst, dstCapacity, src, srcSize, dctx->rleSize);
                break;
            case bt_reserved :   /* should never happen */
            default:
                return FUNC2(corruption_detected);
            }
            if (FUNC12(rSize)) return rSize;
            FUNC1(5, "ZSTD_decompressContinue: decoded size from block : %u", (U32)rSize);
            dctx->decodedSize += rSize;
            if (dctx->fParams.checksumFlag) FUNC5(&dctx->xxhState, dst, rSize);

            if (dctx->stage == ZSTDds_decompressLastBlock) {   /* end of frame */
                FUNC1(4, "ZSTD_decompressContinue: decoded size from frame : %u", (U32)dctx->decodedSize);
                if (dctx->fParams.frameContentSize != ZSTD_CONTENTSIZE_UNKNOWN) {
                    if (dctx->decodedSize != dctx->fParams.frameContentSize) {
                        return FUNC2(corruption_detected);
                }   }
                if (dctx->fParams.checksumFlag) {  /* another round for frame checksum */
                    dctx->expected = 4;
                    dctx->stage = ZSTDds_checkChecksum;
                } else {
                    dctx->expected = 0;   /* ends here */
                    dctx->stage = ZSTDds_getFrameHeaderSize;
                }
            } else {
                dctx->stage = ZSTDds_decodeBlockHeader;
                dctx->expected = ZSTD_blockHeaderSize;
                dctx->previousDstEnd = (char*)dst + rSize;
            }
            return rSize;
        }

    case ZSTDds_checkChecksum:
        FUNC14(srcSize == 4);  /* guaranteed by dctx->expected */
        {   U32 const h32 = (U32)FUNC4(&dctx->xxhState);
            U32 const check32 = FUNC3(src);
            FUNC1(4, "ZSTD_decompressContinue: checksum : calculated %08X :: %08X read", h32, check32);
            if (check32 != h32) return FUNC2(checksum_wrong);
            dctx->expected = 0;
            dctx->stage = ZSTDds_getFrameHeaderSize;
            return 0;
        }

    case ZSTDds_decodeSkippableHeader:
        FUNC14(src != NULL);
        FUNC14(srcSize <= ZSTD_skippableHeaderSize);
        FUNC15(dctx->headerBuffer + (ZSTD_skippableHeaderSize - srcSize), src, srcSize);   /* complete skippable header */
        dctx->expected = FUNC3(dctx->headerBuffer + ZSTD_FRAMEIDSIZE);   /* note : dctx->expected can grow seriously large, beyond local buffer size */
        dctx->stage = ZSTDds_skipFrame;
        return 0;

    case ZSTDds_skipFrame:
        dctx->expected = 0;
        dctx->stage = ZSTDds_getFrameHeaderSize;
        return 0;

    default:
        return FUNC2(GENERIC);   /* impossible */
    }
}