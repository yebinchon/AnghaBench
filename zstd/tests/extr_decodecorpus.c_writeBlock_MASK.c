#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ contentSize; } ;
struct TYPE_6__ {int* data; int* src; int /*<<< orphan*/  oldStats; int /*<<< orphan*/  stats; TYPE_1__ header; } ;
typedef  TYPE_2__ frame_t ;
typedef  int /*<<< orphan*/  dictInfo ;
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  U16 ;
typedef  int BYTE ;

/* Variables and functions */
 unsigned int* BLOCK_TYPES ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int* const,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int*,int const,size_t) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(U32* seed, frame_t* frame, size_t contentSize,
                       int lastBlock, dictInfo info)
{
    int const blockTypeDesc = FUNC2(seed) % 8;
    size_t blockSize;
    int blockType;

    BYTE *const header = (BYTE*)frame->data;
    BYTE *op = header + 3;

    FUNC0(4, " block:\n");
    FUNC0(4, "  block content size: %u\n", (unsigned)contentSize);
    FUNC0(4, "  last block: %s\n", lastBlock ? "yes" : "no");

    if (blockTypeDesc == 0) {
        /* Raw data frame */

        FUNC3(seed, frame->src, contentSize);
        FUNC4(op, frame->src, contentSize);

        op += contentSize;
        blockType = 0;
        blockSize = contentSize;
    } else if (blockTypeDesc == 1 && frame->header.contentSize > 0) {
        /* RLE (Don't create RLE block if frame content is 0 since block size of 1 may exceed max block size)*/
        BYTE const symbol = FUNC2(seed) & 0xff;

        op[0] = symbol;
        FUNC5(frame->src, symbol, contentSize);

        op++;
        blockType = 1;
        blockSize = contentSize;
    } else {
        /* compressed, most common */
        size_t compressedSize;
        blockType = 2;

        frame->oldStats = frame->stats;

        frame->data = op;
        compressedSize = FUNC6(seed, frame, contentSize, info);
        if (compressedSize >= contentSize) {   /* compressed block must be strictly smaller than uncompressed one */
            blockType = 0;
            FUNC4(op, frame->src, contentSize);

            op += contentSize;
            blockSize = contentSize; /* fall back on raw block if data doesn't
                                        compress */

            frame->stats = frame->oldStats; /* don't update the stats */
        } else {
            op += compressedSize;
            blockSize = compressedSize;
        }
    }
    frame->src = (BYTE*)frame->src + contentSize;

    FUNC0(4, "  block type: %s\n", BLOCK_TYPES[blockType]);
    FUNC0(4, "  block size field: %u\n", (unsigned)blockSize);

    header[0] = (BYTE) ((lastBlock | (blockType << 1) | (blockSize << 3)) & 0xff);
    FUNC1(header + 1, (U16) (blockSize >> 5));

    frame->data = op;
}