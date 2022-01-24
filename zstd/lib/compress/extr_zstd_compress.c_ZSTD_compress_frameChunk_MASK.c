#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ lowLimit; } ;
struct TYPE_15__ {scalar_t__ nextToUpdate; TYPE_10__ window; int /*<<< orphan*/  dictMatchState; int /*<<< orphan*/  loadedDictEnd; } ;
typedef  TYPE_4__ ZSTD_matchState_t ;
struct TYPE_13__ {scalar_t__ checksumFlag; } ;
struct TYPE_12__ {int windowLog; } ;
struct TYPE_17__ {TYPE_2__ fParams; TYPE_1__ cParams; } ;
struct TYPE_14__ {TYPE_4__ matchState; } ;
struct TYPE_16__ {size_t blockSize; int /*<<< orphan*/  stage; scalar_t__ isFirstBlock; TYPE_7__ appliedParams; int /*<<< orphan*/  workspace; TYPE_3__ blockState; int /*<<< orphan*/  xxhState; } ;
typedef  TYPE_5__ ZSTD_CCtx ;
typedef  int U32 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int const) ; 
 size_t MIN_CBLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int ZSTD_WINDOWLOG_MAX ; 
 size_t ZSTD_blockHeaderSize ; 
 int /*<<< orphan*/  FUNC5 (TYPE_10__*,int /*<<< orphan*/  const*,int const,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC6 (TYPE_5__*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/  const*,size_t,int) ; 
 size_t FUNC7 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/  const*,size_t,int const) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__* const,int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ZSTDcs_ending ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ bt_compressed ; 
 scalar_t__ bt_rle ; 
 int /*<<< orphan*/  dstSize_tooSmall ; 

__attribute__((used)) static size_t FUNC10 (ZSTD_CCtx* cctx,
                                     void* dst, size_t dstCapacity,
                               const void* src, size_t srcSize,
                                     U32 lastFrameChunk)
{
    size_t blockSize = cctx->blockSize;
    size_t remaining = srcSize;
    const BYTE* ip = (const BYTE*)src;
    BYTE* const ostart = (BYTE*)dst;
    BYTE* op = ostart;
    U32 const maxDist = (U32)1 << cctx->appliedParams.cParams.windowLog;
    FUNC9(cctx->appliedParams.cParams.windowLog <= ZSTD_WINDOWLOG_MAX);

    FUNC0(5, "ZSTD_compress_frameChunk (blockSize=%u)", (unsigned)blockSize);
    if (cctx->appliedParams.fParams.checksumFlag && srcSize)
        FUNC4(&cctx->xxhState, src, srcSize);

    while (remaining) {
        ZSTD_matchState_t* const ms = &cctx->blockState.matchState;
        U32 const lastBlock = lastFrameChunk & (blockSize >= remaining);

        FUNC3(dstCapacity < ZSTD_blockHeaderSize + MIN_CBLOCK_SIZE,
                        dstSize_tooSmall,
                        "not enough space to store compressed block");
        if (remaining < blockSize) blockSize = remaining;

        FUNC8(
            ms, &cctx->workspace, &cctx->appliedParams, ip, ip + blockSize);
        FUNC5(&ms->window, ip + blockSize, maxDist, &ms->loadedDictEnd, &ms->dictMatchState);

        /* Ensure hash/chain table insertion resumes no sooner than lowlimit */
        if (ms->nextToUpdate < ms->window.lowLimit) ms->nextToUpdate = ms->window.lowLimit;

        {   size_t cSize = FUNC6(cctx,
                                op+ZSTD_blockHeaderSize, dstCapacity-ZSTD_blockHeaderSize,
                                ip, blockSize, 1 /* frame */);
            FUNC1(cSize);
            if (cSize == 0) {  /* block is not compressible */
                cSize = FUNC7(op, dstCapacity, ip, blockSize, lastBlock);
                FUNC1(cSize);
            } else {
                const U32 cBlockHeader = cSize == 1 ?
                    lastBlock + (((U32)bt_rle)<<1) + (U32)(blockSize << 3) :
                    lastBlock + (((U32)bt_compressed)<<1) + (U32)(cSize << 3);
                FUNC2(op, cBlockHeader);
                cSize += ZSTD_blockHeaderSize;
            }

            ip += blockSize;
            FUNC9(remaining >= blockSize);
            remaining -= blockSize;
            op += cSize;
            FUNC9(dstCapacity >= cSize);
            dstCapacity -= cSize;
            cctx->isFirstBlock = 0;
            FUNC0(5, "ZSTD_compress_frameChunk: adding a block of size %u",
                        (unsigned)cSize);
    }   }

    if (lastFrameChunk && (op>ostart)) cctx->stage = ZSTDcs_ending;
    return (size_t)(op-ostart);
}