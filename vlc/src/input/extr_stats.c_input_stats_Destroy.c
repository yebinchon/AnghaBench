
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int lock; } ;
struct input_stats {TYPE_2__ input_bitrate; TYPE_1__ demux_bitrate; } ;


 int free (struct input_stats*) ;
 int vlc_mutex_destroy (int *) ;

void input_stats_Destroy(struct input_stats *stats)
{
    vlc_mutex_destroy(&stats->demux_bitrate.lock);
    vlc_mutex_destroy(&stats->input_bitrate.lock);
    free(stats);
}
