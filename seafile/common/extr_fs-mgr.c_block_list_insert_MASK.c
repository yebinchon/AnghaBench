#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  n_blocks; int /*<<< orphan*/  block_ids; int /*<<< orphan*/  block_hash; } ;
typedef  TYPE_1__ BlockList ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (char const*) ; 

void
FUNC4 (BlockList *bl, const char *block_id)
{
    if (FUNC0 (bl->block_hash, block_id))
        return;

    char *key = FUNC3(block_id);
    FUNC1 (bl->block_hash, key, key);
    FUNC2 (bl->block_ids, FUNC3(block_id));
    ++bl->n_blocks;
}