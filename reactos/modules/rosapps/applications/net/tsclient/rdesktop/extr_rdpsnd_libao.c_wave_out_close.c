
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ s; int index; int tick; } ;


 size_t MAX_QUEUE ;
 int ao_close (int *) ;
 int ao_shutdown () ;
 int free (int ) ;
 int * o_device ;
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

 if (o_device != ((void*)0))
  ao_close(o_device);

 ao_shutdown();
}
