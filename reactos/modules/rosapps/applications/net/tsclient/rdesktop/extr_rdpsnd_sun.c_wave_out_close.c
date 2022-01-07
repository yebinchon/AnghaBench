
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int dsp_; } ;
struct TYPE_4__ {int data; } ;
struct TYPE_5__ {TYPE_1__ s; int index; int tick; } ;


 int AUDIO_FLUSH ;
 int * FLUSHW ;
 int I_FLUSH ;
 size_t MAX_QUEUE ;
 TYPE_3__* This ;
 int close (int ) ;
 int free (int ) ;
 int ioctl (int ,int ,int *) ;
 TYPE_2__* packet_queue ;
 size_t queue_hi ;
 size_t queue_lo ;
 int rdpsnd_send_completion (int ,int ) ;

void
wave_out_close(void)
{

 while (queue_lo != queue_hi)
 {
  rdpsnd_send_completion(packet_queue[queue_lo].tick, packet_queue[queue_lo].index);
  free(packet_queue[queue_lo].s.data);
  queue_lo = (queue_lo + 1) % MAX_QUEUE;
 }
 close(This->dsp_);
}
