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
typedef  int /*<<< orphan*/  GList ;
typedef  int /*<<< orphan*/  GHashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4 (GList **block_list, GHashTable *added_blocks, const char *block_id)
{
    int dummy;

    if (FUNC1 (added_blocks, block_id))
        return;

    *block_list = FUNC2 (*block_list, FUNC3(block_id));
    FUNC0 (added_blocks, FUNC3(block_id), &dummy);
}