
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ s; int index; int tick; } ;


 size_t MAX_QUEUE ;
 int alClosePort (int ) ;
 int alDiscardFrames (int ,int ) ;
 int alFreeConfig (int ) ;
 int audioconfig ;
 int fprintf (int ,char*) ;
 int free (int ) ;
 int output_port ;
 TYPE_2__* packet_queue ;
 size_t queue_hi ;
 size_t queue_lo ;
 int rdpsnd_send_completion (int ,int ) ;
 int stderr ;

void
wave_out_close(void)
{





 while (queue_lo != queue_hi)
 {
  rdpsnd_send_completion(packet_queue[queue_lo].tick, packet_queue[queue_lo].index);
  free(packet_queue[queue_lo].s.data);
  queue_lo = (queue_lo + 1) % MAX_QUEUE;
 }
 alDiscardFrames(output_port, 0);

 alClosePort(output_port);
 alFreeConfig(audioconfig);



}
