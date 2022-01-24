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
struct vacuum_info {int /*<<< orphan*/  filename; int /*<<< orphan*/  seqnum_id; scalar_t__ have_seqnum; int /*<<< orphan*/  realtime; int /*<<< orphan*/  seqnum; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const struct vacuum_info *a, const struct vacuum_info *b) {
        int r;

        if (a->have_seqnum && b->have_seqnum &&
            FUNC2(a->seqnum_id, b->seqnum_id))
                return FUNC0(a->seqnum, b->seqnum);

        r = FUNC0(a->realtime, b->realtime);
        if (r != 0)
                return r;

        if (a->have_seqnum && b->have_seqnum)
                return FUNC1(&a->seqnum_id, &b->seqnum_id, 16);

        return FUNC3(a->filename, b->filename);
}