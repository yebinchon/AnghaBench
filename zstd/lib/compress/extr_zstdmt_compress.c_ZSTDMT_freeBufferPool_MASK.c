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
struct TYPE_6__ {unsigned int totalBuffers; int /*<<< orphan*/  cMem; int /*<<< orphan*/  poolMutex; TYPE_1__* bTable; } ;
typedef  TYPE_2__ ZSTDMT_bufferPool ;
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_5__ {TYPE_2__* start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(ZSTDMT_bufferPool* bufPool)
{
    unsigned u;
    FUNC0(3, "ZSTDMT_freeBufferPool (address:%08X)", (U32)(size_t)bufPool);
    if (!bufPool) return;   /* compatibility with free on NULL */
    for (u=0; u<bufPool->totalBuffers; u++) {
        FUNC0(4, "free buffer %2u (address:%08X)", u, (U32)(size_t)bufPool->bTable[u].start);
        FUNC1(bufPool->bTable[u].start, bufPool->cMem);
    }
    FUNC2(&bufPool->poolMutex);
    FUNC1(bufPool, bufPool->cMem);
}