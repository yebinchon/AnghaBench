#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  filter_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ * const*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static block_t *FUNC4(filter_t *const *filters,
                                          unsigned count)
{
    block_t *chain = NULL;

    for (unsigned i = 0; i < count; i++)
    {
        filter_t *filter = filters[i];

        block_t *block = FUNC3 (filter);
        if (block)
        {
            /* If there is a drained block, filter it through the following
             * chain of filters  */
            if (i + 1 < count)
                block = FUNC0 (&filters[i + 1],
                                                  count - i - 1, block);
            if (block)
                FUNC1 (&chain, block);
        }
    }

    if (chain)
        return FUNC2(chain);
    else
        return NULL;
}