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
struct input_stats {int /*<<< orphan*/  lost_pictures; int /*<<< orphan*/  displayed_pictures; int /*<<< orphan*/  lost_abuffers; int /*<<< orphan*/  played_abuffers; int /*<<< orphan*/  decoded_video; int /*<<< orphan*/  decoded_audio; int /*<<< orphan*/  demux_discontinuity; int /*<<< orphan*/  demux_corrupted; int /*<<< orphan*/  demux_bitrate; int /*<<< orphan*/  input_bitrate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct input_stats* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

struct input_stats *FUNC4(void)
{
    struct input_stats *stats = FUNC2(sizeof (*stats));
    if (FUNC3(stats == NULL))
        return NULL;

    FUNC1(&stats->input_bitrate);
    FUNC1(&stats->demux_bitrate);
    FUNC0(&stats->demux_corrupted, 0);
    FUNC0(&stats->demux_discontinuity, 0);
    FUNC0(&stats->decoded_audio, 0);
    FUNC0(&stats->decoded_video, 0);
    FUNC0(&stats->played_abuffers, 0);
    FUNC0(&stats->lost_abuffers, 0);
    FUNC0(&stats->displayed_pictures, 0);
    FUNC0(&stats->lost_pictures, 0);
    return stats;
}