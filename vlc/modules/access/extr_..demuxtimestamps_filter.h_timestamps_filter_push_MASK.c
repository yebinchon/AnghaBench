#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_4__ {scalar_t__ i_packet; } ;
struct timestamps_filter_s {scalar_t__ sequence_offset; scalar_t__ contiguous_last; TYPE_1__ mva; } ;
struct mva_packet_s {scalar_t__ dts; int diff; } ;
typedef  int int64_t ;

/* Variables and functions */
 int CLOCK_FREQ ; 
 scalar_t__ MVA_PACKETS ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int const FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int FUNC3 (TYPE_1__*) ; 
 struct mva_packet_s* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,scalar_t__,...) ; 

__attribute__((used)) static void FUNC6(const char *s, struct timestamps_filter_s *tf,
                                   vlc_tick_t i_dts, vlc_tick_t i_length,
                                   bool b_discontinuity, bool b_contiguous)
{
    if(i_dts == 0 && i_length == 0)
        return;

    struct mva_packet_s *prev = FUNC4(&tf->mva);
    if (prev)
    {
        if(prev->dts == i_dts)
            return; /* duplicate packet */

        if(b_contiguous)
        {
            const int64_t i_maxdiff = tf->mva.i_packet > MVA_PACKETS ? FUNC3(&tf->mva) * 2 : CLOCK_FREQ;
            if(FUNC1(i_dts - prev->dts) > i_maxdiff || b_discontinuity) /* Desync */
            {
                prev->diff = FUNC3(&tf->mva);
                tf->sequence_offset = tf->contiguous_last - i_dts + prev->diff;
#ifdef DEBUG_TIMESTAMPS_FILTER
                printf("%4.4s found offset of %ld\n", s, (prev->dts - i_dts));
#endif
            }
            else prev->diff = i_dts - prev->dts;
        }

#ifdef DEBUG_TIMESTAMPS_FILTER
        vlc_tick_t next = prev->dts + mva_get(&tf->mva);

        printf("%4.4s expected %ld / %ld , prev %ld+%ld error %ld comp %ld\n",
               s, next, i_dts, prev->dts, mva_get(&tf->mva),
               b_contiguous ? llabs(i_dts - next): 0, i_dts + tf->sequence_offset);
#else
        FUNC0(s);
#endif
    }

    tf->contiguous_last = i_dts + tf->sequence_offset;

    FUNC2(&tf->mva, i_dts, i_length);
}