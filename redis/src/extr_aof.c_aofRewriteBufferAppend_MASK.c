#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* value; } ;
typedef  TYPE_1__ listNode ;
struct TYPE_8__ {unsigned long free; scalar_t__ used; scalar_t__ buf; } ;
typedef  TYPE_2__ aofrwblock ;
struct TYPE_9__ {int /*<<< orphan*/  aof_pipe_write_data_to_child; int /*<<< orphan*/  el; int /*<<< orphan*/  aof_rewrite_buf_blocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_WRITABLE ; 
 unsigned long AOF_RW_BUF_BLOCK_SIZE ; 
 int LL_NOTICE ; 
 int LL_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aofChildWriteDiffData ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,unsigned char*,unsigned long) ; 
 TYPE_4__ server ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 
 TYPE_2__* FUNC8 (int) ; 

void FUNC9(unsigned char *s, unsigned long len) {
    listNode *ln = FUNC4(server.aof_rewrite_buf_blocks);
    aofrwblock *block = ln ? ln->value : NULL;

    while(len) {
        /* If we already got at least an allocated block, try appending
         * at least some piece into it. */
        if (block) {
            unsigned long thislen = (block->free < len) ? block->free : len;
            if (thislen) {  /* The current block is not already full. */
                FUNC6(block->buf+block->used, s, thislen);
                block->used += thislen;
                block->free -= thislen;
                s += thislen;
                len -= thislen;
            }
        }

        if (len) { /* First block to allocate, or need another block. */
            int numblocks;

            block = FUNC8(sizeof(*block));
            block->free = AOF_RW_BUF_BLOCK_SIZE;
            block->used = 0;
            FUNC3(server.aof_rewrite_buf_blocks,block);

            /* Log every time we cross more 10 or 100 blocks, respectively
             * as a notice or warning. */
            numblocks = FUNC5(server.aof_rewrite_buf_blocks);
            if (((numblocks+1) % 10) == 0) {
                int level = ((numblocks+1) % 100) == 0 ? LL_WARNING :
                                                         LL_NOTICE;
                FUNC7(level,"Background AOF buffer size: %lu MB",
                    FUNC2()/(1024*1024));
            }
        }
    }

    /* Install a file event to send data to the rewrite child if there is
     * not one already. */
    if (FUNC1(server.el,server.aof_pipe_write_data_to_child) == 0) {
        FUNC0(server.el, server.aof_pipe_write_data_to_child,
            AE_WRITABLE, aofChildWriteDiffData, NULL);
    }
}