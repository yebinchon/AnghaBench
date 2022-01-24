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
struct TYPE_5__ {int /*<<< orphan*/ * start; scalar_t__ capacity; } ;
typedef  TYPE_1__ buffer_t ;
struct TYPE_6__ {int nbBuffers; int totalBuffers; int /*<<< orphan*/  cMem; int /*<<< orphan*/  poolMutex; TYPE_1__* bTable; } ;
typedef  TYPE_2__ ZSTDMT_bufferPool ;
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(ZSTDMT_bufferPool* bufPool, buffer_t buf)
{
    FUNC0(5, "ZSTDMT_releaseBuffer");
    if (buf.start == NULL) return;   /* compatible with release on NULL */
    FUNC2(&bufPool->poolMutex);
    if (bufPool->nbBuffers < bufPool->totalBuffers) {
        bufPool->bTable[bufPool->nbBuffers++] = buf;  /* stored for later use */
        FUNC0(5, "ZSTDMT_releaseBuffer: stored buffer of size %u in slot %u",
                    (U32)buf.capacity, (U32)(bufPool->nbBuffers-1));
        FUNC3(&bufPool->poolMutex);
        return;
    }
    FUNC3(&bufPool->poolMutex);
    /* Reached bufferPool capacity (should not happen) */
    FUNC0(5, "ZSTDMT_releaseBuffer: pool capacity reached => freeing ");
    FUNC1(buf.start, bufPool->cMem);
}