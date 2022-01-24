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
struct journal_head {int /*<<< orphan*/  b_jcount; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 struct journal_head* FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 

struct journal_head *FUNC4(struct buffer_head *bh)
{
    struct journal_head *jh = NULL;

    FUNC2(bh);
    if (FUNC1(bh)) {
        jh = FUNC0(bh);
        jh->b_jcount++;
    }
    FUNC3(bh);
    return jh;
}