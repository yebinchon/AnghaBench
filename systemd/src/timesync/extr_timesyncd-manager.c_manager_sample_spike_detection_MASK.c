#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {double offset; double delay; } ;
struct TYPE_5__ {int packet_count; unsigned int samples_idx; double samples_jitter; TYPE_4__* samples; scalar_t__ poll_resync; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (double) ; 
 scalar_t__ FUNC3 (double,int) ; 
 double FUNC4 (double) ; 

__attribute__((used)) static bool FUNC5(Manager *m, double offset, double delay) {
        unsigned i, idx_cur, idx_new, idx_min;
        double jitter;
        double j;

        FUNC1(m);

        m->packet_count++;

        /* ignore initial sample */
        if (m->packet_count == 1)
                return false;

        /* store the current data in our samples array */
        idx_cur = m->samples_idx;
        idx_new = (idx_cur + 1) % FUNC0(m->samples);
        m->samples_idx = idx_new;
        m->samples[idx_new].offset = offset;
        m->samples[idx_new].delay = delay;

        /* calculate new jitter value from the RMS differences relative to the lowest delay sample */
        jitter = m->samples_jitter;
        for (idx_min = idx_cur, i = 0; i < FUNC0(m->samples); i++)
                if (m->samples[i].delay > 0 && m->samples[i].delay < m->samples[idx_min].delay)
                        idx_min = i;

        j = 0;
        for (i = 0; i < FUNC0(m->samples); i++)
                j += FUNC3(m->samples[i].offset - m->samples[idx_min].offset, 2);
        m->samples_jitter = FUNC4(j / (FUNC0(m->samples) - 1));

        /* ignore samples when resyncing */
        if (m->poll_resync)
                return false;

        /* always accept offset if we are farther off than the round-trip delay */
        if (FUNC2(offset) > delay)
                return false;

        /* we need a few samples before looking at them */
        if (m->packet_count < 4)
                return false;

        /* do not accept anything worse than the maximum possible error of the best sample */
        if (FUNC2(offset) > m->samples[idx_min].delay)
                return true;

        /* compare the difference between the current offset to the previous offset and jitter */
        return FUNC2(offset - m->samples[idx_cur].offset) > 3 * jitter;
}