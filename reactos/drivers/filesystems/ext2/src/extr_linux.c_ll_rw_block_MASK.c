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
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int SWRITE ; 
 int WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 

void FUNC7(int rw, int nr, struct buffer_head * bhs[])
{
    int i;

    for (i = 0; i < nr; i++) {

        struct buffer_head *bh = bhs[i];

        if (rw == SWRITE)
            FUNC2(bh);
        else if (FUNC5(bh))
            continue;

        if (rw == WRITE || rw == SWRITE) {
            if (FUNC4(bh)) {
                FUNC1(bh);
                FUNC3(WRITE, bh);
                continue;
            }
        } else {
            if (!FUNC0(bh)) {
                FUNC1(bh);
                FUNC3(rw, bh);
                continue;
            }
        }
        FUNC6(bh);
    }
}