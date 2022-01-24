#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int blockType; } ;
typedef  TYPE_1__ blockProperties_t ;
typedef  int /*<<< orphan*/  blockProperties ;
typedef  int /*<<< orphan*/  ZSTDv05_DCtx ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 size_t ZSTDv05_blockHeaderSize ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,void const*,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,void const*,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,size_t) ; 
 size_t ZSTDv05_frameHeaderSize_min ; 
 size_t FUNC5 (int /*<<< orphan*/  const*,int,TYPE_1__*) ; 
 scalar_t__ FUNC6 (size_t) ; 
#define  bt_compressed 131 
#define  bt_end 130 
#define  bt_raw 129 
#define  bt_rle 128 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  srcSize_wrong ; 

__attribute__((used)) static size_t FUNC8(ZSTDv05_DCtx* dctx,
                                 void* dst, size_t maxDstSize,
                                 const void* src, size_t srcSize)
{
    const BYTE* ip = (const BYTE*)src;
    const BYTE* iend = ip + srcSize;
    BYTE* const ostart = (BYTE* const)dst;
    BYTE* op = ostart;
    BYTE* const oend = ostart + maxDstSize;
    size_t remainingSize = srcSize;
    blockProperties_t blockProperties;
    FUNC7(&blockProperties, 0, sizeof(blockProperties));

    /* Frame Header */
    {   size_t frameHeaderSize;
        if (srcSize < ZSTDv05_frameHeaderSize_min+ZSTDv05_blockHeaderSize) return FUNC0(srcSize_wrong);
        frameHeaderSize = FUNC2(dctx, src, ZSTDv05_frameHeaderSize_min);
        if (FUNC6(frameHeaderSize)) return frameHeaderSize;
        if (srcSize < frameHeaderSize+ZSTDv05_blockHeaderSize) return FUNC0(srcSize_wrong);
        ip += frameHeaderSize; remainingSize -= frameHeaderSize;
        frameHeaderSize = FUNC3(dctx, src, frameHeaderSize);
        if (FUNC6(frameHeaderSize)) return frameHeaderSize;
    }

    /* Loop on each block */
    while (1)
    {
        size_t decodedSize=0;
        size_t cBlockSize = FUNC5(ip, iend-ip, &blockProperties);
        if (FUNC6(cBlockSize)) return cBlockSize;

        ip += ZSTDv05_blockHeaderSize;
        remainingSize -= ZSTDv05_blockHeaderSize;
        if (cBlockSize > remainingSize) return FUNC0(srcSize_wrong);

        switch(blockProperties.blockType)
        {
        case bt_compressed:
            decodedSize = FUNC4(dctx, op, oend-op, ip, cBlockSize);
            break;
        case bt_raw :
            decodedSize = FUNC1(op, oend-op, ip, cBlockSize);
            break;
        case bt_rle :
            return FUNC0(GENERIC);   /* not yet supported */
            break;
        case bt_end :
            /* end of frame */
            if (remainingSize) return FUNC0(srcSize_wrong);
            break;
        default:
            return FUNC0(GENERIC);   /* impossible */
        }
        if (cBlockSize == 0) break;   /* bt_end */

        if (FUNC6(decodedSize)) return decodedSize;
        op += decodedSize;
        ip += cBlockSize;
        remainingSize -= cBlockSize;
    }

    return op-ostart;
}