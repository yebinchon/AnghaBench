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
struct TYPE_9__ {int /*<<< orphan*/  checksumFlag; } ;
struct TYPE_11__ {size_t expected; int stage; size_t headerBuffer; size_t headerSize; char* previousDstEnd; int /*<<< orphan*/  xxhState; TYPE_1__ fParams; int /*<<< orphan*/  rleSize; int /*<<< orphan*/  bType; } ;
typedef  TYPE_3__ ZSTD_DCtx ;
typedef  int U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 int ZSTD_MAGIC_SKIPPABLE_START ; 
 void* ZSTD_blockHeaderSize ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,void*) ; 
 size_t FUNC3 (void*,size_t,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,size_t,size_t) ; 
 size_t FUNC5 (TYPE_3__*,void*,size_t,void const*,size_t) ; 
 size_t FUNC6 (void const*,size_t) ; 
 size_t ZSTD_frameHeaderSize_prefix ; 
 size_t FUNC7 (void const*,void*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (size_t const) ; 
 int FUNC9 (void const*) ; 
 size_t FUNC10 (void*,size_t,void const*,size_t,int /*<<< orphan*/ ) ; 
 size_t ZSTD_skippableHeaderSize ; 
#define  ZSTDds_checkChecksum 139 
#define  ZSTDds_decodeBlockHeader 138 
#define  ZSTDds_decodeFrameHeader 137 
#define  ZSTDds_decodeSkippableHeader 136 
#define  ZSTDds_decompressBlock 135 
#define  ZSTDds_decompressLastBlock 134 
#define  ZSTDds_getFrameHeaderSize 133 
#define  ZSTDds_skipFrame 132 
#define  bt_compressed 131 
#define  bt_raw 130 
#define  bt_reserved 129 
#define  bt_rle 128 
 int /*<<< orphan*/  checksum_wrong ; 
 int /*<<< orphan*/  corruption_detected ; 
 int /*<<< orphan*/  FUNC11 (size_t,void const*,size_t) ; 
 int /*<<< orphan*/  srcSize_wrong ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,void*,size_t) ; 

size_t FUNC14(ZSTD_DCtx *dctx, void *dst, size_t dstCapacity, const void *src, size_t srcSize)
{
	/* Sanity check */
	if (srcSize != dctx->expected)
		return FUNC1(srcSize_wrong);
	if (dstCapacity)
		FUNC2(dctx, dst);

	switch (dctx->stage) {
	case ZSTDds_getFrameHeaderSize:
		if (srcSize != ZSTD_frameHeaderSize_prefix)
			return FUNC1(srcSize_wrong);					/* impossible */
		if ((FUNC9(src) & 0xFFFFFFF0U) == ZSTD_MAGIC_SKIPPABLE_START) { /* skippable frame */
			FUNC11(dctx->headerBuffer, src, ZSTD_frameHeaderSize_prefix);
			dctx->expected = ZSTD_skippableHeaderSize - ZSTD_frameHeaderSize_prefix; /* magic number + skippable frame length */
			dctx->stage = ZSTDds_decodeSkippableHeader;
			return 0;
		}
		dctx->headerSize = FUNC6(src, ZSTD_frameHeaderSize_prefix);
		if (FUNC8(dctx->headerSize))
			return dctx->headerSize;
		FUNC11(dctx->headerBuffer, src, ZSTD_frameHeaderSize_prefix);
		if (dctx->headerSize > ZSTD_frameHeaderSize_prefix) {
			dctx->expected = dctx->headerSize - ZSTD_frameHeaderSize_prefix;
			dctx->stage = ZSTDds_decodeFrameHeader;
			return 0;
		}
		dctx->expected = 0; /* not necessary to copy more */

	case ZSTDds_decodeFrameHeader:
		FUNC11(dctx->headerBuffer + ZSTD_frameHeaderSize_prefix, src, dctx->expected);
		FUNC0(FUNC4(dctx, dctx->headerBuffer, dctx->headerSize));
		dctx->expected = ZSTD_blockHeaderSize;
		dctx->stage = ZSTDds_decodeBlockHeader;
		return 0;

	case ZSTDds_decodeBlockHeader: {
		blockProperties_t bp;
		size_t const cBlockSize = FUNC7(src, ZSTD_blockHeaderSize, &bp);
		if (FUNC8(cBlockSize))
			return cBlockSize;
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
			dctx->expected = 3; /* go directly to next header */
			dctx->stage = ZSTDds_decodeBlockHeader;
		}
		return 0;
	}
	case ZSTDds_decompressLastBlock:
	case ZSTDds_decompressBlock: {
		size_t rSize;
		switch (dctx->bType) {
		case bt_compressed: rSize = FUNC5(dctx, dst, dstCapacity, src, srcSize); break;
		case bt_raw: rSize = FUNC3(dst, dstCapacity, src, srcSize); break;
		case bt_rle: rSize = FUNC10(dst, dstCapacity, src, srcSize, dctx->rleSize); break;
		case bt_reserved: /* should never happen */
		default: return FUNC1(corruption_detected);
		}
		if (FUNC8(rSize))
			return rSize;
		if (dctx->fParams.checksumFlag)
			FUNC13(&dctx->xxhState, dst, rSize);

		if (dctx->stage == ZSTDds_decompressLastBlock) { /* end of frame */
			if (dctx->fParams.checksumFlag) {	/* another round for frame checksum */
				dctx->expected = 4;
				dctx->stage = ZSTDds_checkChecksum;
			} else {
				dctx->expected = 0; /* ends here */
				dctx->stage = ZSTDds_getFrameHeaderSize;
			}
		} else {
			dctx->stage = ZSTDds_decodeBlockHeader;
			dctx->expected = ZSTD_blockHeaderSize;
			dctx->previousDstEnd = (char *)dst + rSize;
		}
		return rSize;
	}
	case ZSTDds_checkChecksum: {
		U32 const h32 = (U32)FUNC12(&dctx->xxhState);
		U32 const check32 = FUNC9(src); /* srcSize == 4, guaranteed by dctx->expected */
		if (check32 != h32)
			return FUNC1(checksum_wrong);
		dctx->expected = 0;
		dctx->stage = ZSTDds_getFrameHeaderSize;
		return 0;
	}
	case ZSTDds_decodeSkippableHeader: {
		FUNC11(dctx->headerBuffer + ZSTD_frameHeaderSize_prefix, src, dctx->expected);
		dctx->expected = FUNC9(dctx->headerBuffer + 4);
		dctx->stage = ZSTDds_skipFrame;
		return 0;
	}
	case ZSTDds_skipFrame: {
		dctx->expected = 0;
		dctx->stage = ZSTDds_getFrameHeaderSize;
		return 0;
	}
	default:
		return FUNC1(GENERIC); /* impossible */
	}
}