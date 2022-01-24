#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int blockType; } ;
typedef  TYPE_1__ blockProperties_t ;
struct TYPE_10__ {size_t expected; int stage; size_t headerSize; int bType; char* previousDstEnd; int /*<<< orphan*/  headerBuffer; } ;
typedef  TYPE_2__ ZSTDv05_DCtx ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 void* ZSTDv05_blockHeaderSize ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,void*) ; 
 size_t FUNC2 (void*,size_t,void const*,size_t) ; 
 size_t FUNC3 (TYPE_2__*,void const*,size_t) ; 
 size_t FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC5 (TYPE_2__*,void*,size_t,void const*,size_t) ; 
 size_t ZSTDv05_frameHeaderSize_min ; 
 size_t FUNC6 (void const*,void*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (size_t const) ; 
#define  ZSTDv05ds_decodeBlockHeader 135 
#define  ZSTDv05ds_decodeFrameHeader 134 
#define  ZSTDv05ds_decompressBlock 133 
#define  ZSTDv05ds_getFrameHeaderSize 132 
#define  bt_compressed 131 
#define  bt_end 130 
#define  bt_raw 129 
#define  bt_rle 128 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  srcSize_wrong ; 

size_t FUNC9(ZSTDv05_DCtx* dctx, void* dst, size_t maxDstSize, const void* src, size_t srcSize)
{
    /* Sanity check */
    if (srcSize != dctx->expected) return FUNC0(srcSize_wrong);
    FUNC1(dctx, dst);

    /* Decompress : frame header; part 1 */
    switch (dctx->stage)
    {
    case ZSTDv05ds_getFrameHeaderSize :
        /* get frame header size */
        if (srcSize != ZSTDv05_frameHeaderSize_min) return FUNC0(srcSize_wrong);   /* impossible */
        dctx->headerSize = FUNC3(dctx, src, ZSTDv05_frameHeaderSize_min);
        if (FUNC7(dctx->headerSize)) return dctx->headerSize;
        FUNC8(dctx->headerBuffer, src, ZSTDv05_frameHeaderSize_min);
        if (dctx->headerSize > ZSTDv05_frameHeaderSize_min) return FUNC0(GENERIC); /* should never happen */
        dctx->expected = 0;   /* not necessary to copy more */
        /* fallthrough */
    case ZSTDv05ds_decodeFrameHeader:
        /* get frame header */
        {   size_t const result = FUNC4(dctx, dctx->headerBuffer, dctx->headerSize);
            if (FUNC7(result)) return result;
            dctx->expected = ZSTDv05_blockHeaderSize;
            dctx->stage = ZSTDv05ds_decodeBlockHeader;
            return 0;
        }
    case ZSTDv05ds_decodeBlockHeader:
        {
            /* Decode block header */
            blockProperties_t bp;
            size_t blockSize = FUNC6(src, ZSTDv05_blockHeaderSize, &bp);
            if (FUNC7(blockSize)) return blockSize;
            if (bp.blockType == bt_end) {
                dctx->expected = 0;
                dctx->stage = ZSTDv05ds_getFrameHeaderSize;
            }
            else {
                dctx->expected = blockSize;
                dctx->bType = bp.blockType;
                dctx->stage = ZSTDv05ds_decompressBlock;
            }
            return 0;
        }
    case ZSTDv05ds_decompressBlock:
        {
            /* Decompress : block content */
            size_t rSize;
            switch(dctx->bType)
            {
            case bt_compressed:
                rSize = FUNC5(dctx, dst, maxDstSize, src, srcSize);
                break;
            case bt_raw :
                rSize = FUNC2(dst, maxDstSize, src, srcSize);
                break;
            case bt_rle :
                return FUNC0(GENERIC);   /* not yet handled */
                break;
            case bt_end :   /* should never happen (filtered at phase 1) */
                rSize = 0;
                break;
            default:
                return FUNC0(GENERIC);   /* impossible */
            }
            dctx->stage = ZSTDv05ds_decodeBlockHeader;
            dctx->expected = ZSTDv05_blockHeaderSize;
            dctx->previousDstEnd = (char*)dst + rSize;
            return rSize;
        }
    default:
        return FUNC0(GENERIC);   /* impossible */
    }
}