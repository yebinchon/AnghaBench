#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct buffer_head {int /*<<< orphan*/  b_ts_creat; int /*<<< orphan*/  b_link; } ;
struct TYPE_2__ {int /*<<< orphan*/  bh_acount; int /*<<< orphan*/  bh_count; int /*<<< orphan*/  bh_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  DL_BH ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PS_BUFF_HEAD ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ g_jbh ; 
 struct buffer_head* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*,int /*<<< orphan*/ ,int) ; 

struct buffer_head *
FUNC7()
{
    struct buffer_head * bh = NULL;
    bh = FUNC5(g_jbh.bh_cache, GFP_NOFS);
    if (bh) {
        FUNC4(&g_jbh.bh_count);
        FUNC4(&g_jbh.bh_acount);

        FUNC6(bh, 0, sizeof(struct buffer_head));
        FUNC2(&bh->b_link);
        FUNC3(&bh->b_ts_creat);
        FUNC0(DL_BH, ("bh=%p allocated.\n", bh));
        FUNC1(PS_BUFF_HEAD, bh, sizeof(struct buffer_head));
    }

    return bh;
}