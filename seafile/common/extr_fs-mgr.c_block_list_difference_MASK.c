#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int len; } ;
struct TYPE_8__ {int /*<<< orphan*/  n_blocks; TYPE_2__* block_ids; int /*<<< orphan*/  block_hash; } ;
typedef  TYPE_1__ BlockList ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 char* FUNC4 (TYPE_2__*,int) ; 
 char* FUNC5 (char*) ; 

BlockList *
FUNC6 (BlockList *bl1, BlockList *bl2)
{
    BlockList *bl;
    int i;
    char *block_id;
    char *key;

    bl = FUNC0 ();

    for (i = 0; i < bl1->block_ids->len; ++i) {
        block_id = FUNC4 (bl1->block_ids, i);
        if (FUNC1 (bl2->block_hash, block_id) == NULL) {
            key = FUNC5(block_id);
            FUNC2 (bl->block_hash, key, key);
            FUNC3 (bl->block_ids, FUNC5(block_id));
            ++bl->n_blocks;
        }
    }

    return bl;
}