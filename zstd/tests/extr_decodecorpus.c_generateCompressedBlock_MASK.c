#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned int windowSize; } ;
struct TYPE_7__ {int /*<<< orphan*/ * src; int /*<<< orphan*/  oldStats; int /*<<< orphan*/  stats; int /*<<< orphan*/ * data; TYPE_1__ header; } ;
typedef  TYPE_2__ frame_t ;
typedef  int /*<<< orphan*/  dictInfo ;
typedef  scalar_t__ U32 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int MAX_WINDOW_LOG ; 
 size_t FUNC1 (unsigned int,int) ; 
 size_t const FUNC2 (scalar_t__*) ; 
 unsigned int g_maxBlockSize ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 size_t FUNC4 (scalar_t__*,TYPE_2__*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static U32 FUNC5(U32 seed, frame_t* frame, dictInfo info)
{
    size_t blockContentSize;
    int blockWritten = 0;
    BYTE* op;
    FUNC0(4, "block seed: %u\n", (unsigned)seed);
    FUNC3(frame);
    op = (BYTE*)frame->data;

    while (!blockWritten) {
        size_t cSize;
        /* generate window size */
        {   int const exponent = FUNC2(&seed) % (MAX_WINDOW_LOG - 10);
            int const mantissa = FUNC2(&seed) % 8;
            frame->header.windowSize = (1U << (exponent + 10));
            frame->header.windowSize += (frame->header.windowSize / 8) * mantissa;
        }

        /* generate content size */
        {   size_t const maxBlockSize = FUNC1(g_maxBlockSize, frame->header.windowSize);
            if (FUNC2(&seed) & 15) {
                /* some full size blocks */
                blockContentSize = maxBlockSize;
            } else if (FUNC2(&seed) & 7 && g_maxBlockSize >= (1U << 7)) {
                /* some small blocks <= 128 bytes*/
                blockContentSize = FUNC2(&seed) % (1U << 7);
            } else {
                /* some variable size blocks */
                blockContentSize = FUNC2(&seed) % maxBlockSize;
            }
        }

        /* try generating a compressed block */
        frame->oldStats = frame->stats;
        frame->data = op;
        cSize = FUNC4(&seed, frame, blockContentSize, info);
        if (cSize >= blockContentSize) {  /* compressed size must be strictly smaller than decompressed size : https://github.com/facebook/zstd/blob/dev/doc/zstd_compression_format.md#blocks */
            /* data doesn't compress -- try again */
            frame->stats = frame->oldStats; /* don't update the stats */
            FUNC0(5, "   can't compress block : try again \n");
        } else {
            blockWritten = 1;
            FUNC0(4, "   block size: %u \n", (unsigned)cSize);
            frame->src = (BYTE*)frame->src + blockContentSize;
        }
    }
    return seed;
}