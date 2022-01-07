
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
struct TYPE_4__ {int p; int size; int data; } ;
struct audio_packet {TYPE_1__ s; int index; int tick; } ;
struct TYPE_5__ {int dsp_bu; } ;
typedef TYPE_1__* STREAM ;


 size_t MAX_QUEUE ;
 TYPE_3__* This ;
 int error (char*) ;
 int malloc (int ) ;
 struct audio_packet* packet_queue ;
 size_t queue_hi ;
 unsigned int queue_lo ;
 int wave_out_play () ;

void
wave_out_write(STREAM s, uint16 tick, uint8 index)
{
 struct audio_packet *packet = &packet_queue[queue_hi];
 unsigned int next_hi = (queue_hi + 1) % MAX_QUEUE;

 if (next_hi == queue_lo)
 {
  error("No space to queue audio packet\n");
  return;
 }

 queue_hi = next_hi;

 packet->s = *s;
 packet->tick = tick;
 packet->index = index;
 packet->s.p += 4;


 s->data = malloc(s->size);

 if (!This->dsp_bu)
  wave_out_play();
}
