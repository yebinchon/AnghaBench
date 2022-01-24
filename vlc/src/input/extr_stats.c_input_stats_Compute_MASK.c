#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  value; int /*<<< orphan*/  updates; } ;
struct input_stats {int /*<<< orphan*/  lost_pictures; int /*<<< orphan*/  displayed_pictures; int /*<<< orphan*/  decoded_video; int /*<<< orphan*/  lost_abuffers; int /*<<< orphan*/  played_abuffers; int /*<<< orphan*/  decoded_audio; int /*<<< orphan*/  demux_discontinuity; int /*<<< orphan*/  demux_corrupted; TYPE_2__ demux_bitrate; TYPE_2__ input_bitrate; } ;
struct TYPE_4__ {void* i_lost_pictures; void* i_displayed_pictures; void* i_decoded_video; void* i_lost_abuffers; void* i_played_abuffers; void* i_decoded_audio; void* i_demux_discontinuity; void* i_demux_corrupted; void* f_demux_bitrate; int /*<<< orphan*/  i_demux_read_bytes; void* f_input_bitrate; int /*<<< orphan*/  i_read_bytes; int /*<<< orphan*/  i_read_packets; } ;
typedef  TYPE_1__ input_stats_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  memory_order_relaxed ; 
 void* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct input_stats *stats, input_stats_t *st)
{
    /* Input */
    FUNC2(&stats->input_bitrate.lock);
    st->i_read_packets = stats->input_bitrate.updates;
    st->i_read_bytes = stats->input_bitrate.value;
    st->f_input_bitrate = FUNC1(&stats->input_bitrate);
    FUNC3(&stats->input_bitrate.lock);

    FUNC2(&stats->demux_bitrate.lock);
    st->i_demux_read_bytes = stats->demux_bitrate.value;
    st->f_demux_bitrate = FUNC1(&stats->demux_bitrate);
    FUNC3(&stats->demux_bitrate.lock);
    st->i_demux_corrupted = FUNC0(&stats->demux_corrupted,
                                                 memory_order_relaxed);
    st->i_demux_discontinuity = FUNC0(
                    &stats->demux_discontinuity, memory_order_relaxed);

    /* Aout */
    st->i_decoded_audio = FUNC0(&stats->decoded_audio,
                                               memory_order_relaxed);
    st->i_played_abuffers = FUNC0(&stats->played_abuffers,
                                                 memory_order_relaxed);
    st->i_lost_abuffers = FUNC0(&stats->lost_abuffers,
                                               memory_order_relaxed);

    /* Vouts */
    st->i_decoded_video = FUNC0(&stats->decoded_video,
                                               memory_order_relaxed);
    st->i_displayed_pictures = FUNC0(&stats->displayed_pictures,
                                                    memory_order_relaxed);
    st->i_lost_pictures = FUNC0(&stats->lost_pictures,
                                               memory_order_relaxed);
}