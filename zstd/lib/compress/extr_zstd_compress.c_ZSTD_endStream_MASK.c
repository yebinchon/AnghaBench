#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_outBuffer ;
struct TYPE_10__ {int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_3__ ZSTD_inBuffer ;
struct TYPE_8__ {int checksumFlag; } ;
struct TYPE_9__ {scalar_t__ nbWorkers; TYPE_1__ fParams; } ;
struct TYPE_11__ {TYPE_2__ appliedParams; scalar_t__ frameEnded; } ;
typedef  TYPE_4__ ZSTD_CStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (size_t const) ; 
 size_t ZSTD_BLOCKHEADERSIZE ; 
 size_t FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_e_end ; 

size_t FUNC3(ZSTD_CStream* zcs, ZSTD_outBuffer* output)
{
    ZSTD_inBuffer input = { NULL, 0, 0 };
    size_t const remainingToFlush = FUNC2(zcs, output, &input, ZSTD_e_end);
    FUNC1( remainingToFlush );
    if (zcs->appliedParams.nbWorkers > 0) return remainingToFlush;   /* minimal estimation */
    /* single thread mode : attempt to calculate remaining to flush more precisely */
    {   size_t const lastBlockSize = zcs->frameEnded ? 0 : ZSTD_BLOCKHEADERSIZE;
        size_t const checksumSize = (size_t)(zcs->frameEnded ? 0 : zcs->appliedParams.fParams.checksumFlag * 4);
        size_t const toFlush = remainingToFlush + lastBlockSize + checksumSize;
        FUNC0(4, "ZSTD_endStream : remaining to flush : %u", (unsigned)toFlush);
        return toFlush;
    }
}