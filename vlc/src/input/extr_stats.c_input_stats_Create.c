
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_stats {int lost_pictures; int displayed_pictures; int lost_abuffers; int played_abuffers; int decoded_video; int decoded_audio; int demux_discontinuity; int demux_corrupted; int demux_bitrate; int input_bitrate; } ;


 int atomic_init (int *,int ) ;
 int input_rate_Init (int *) ;
 struct input_stats* malloc (int) ;
 scalar_t__ unlikely (int ) ;

struct input_stats *input_stats_Create(void)
{
    struct input_stats *stats = malloc(sizeof (*stats));
    if (unlikely(stats == ((void*)0)))
        return ((void*)0);

    input_rate_Init(&stats->input_bitrate);
    input_rate_Init(&stats->demux_bitrate);
    atomic_init(&stats->demux_corrupted, 0);
    atomic_init(&stats->demux_discontinuity, 0);
    atomic_init(&stats->decoded_audio, 0);
    atomic_init(&stats->decoded_video, 0);
    atomic_init(&stats->played_abuffers, 0);
    atomic_init(&stats->lost_abuffers, 0);
    atomic_init(&stats->displayed_pictures, 0);
    atomic_init(&stats->lost_pictures, 0);
    return stats;
}
