
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* vlc_tick_t ;
struct moving_average_s {size_t i_packet; TYPE_1__* packets; } ;
struct TYPE_2__ {void* diff; void* duration; void* dts; } ;


 size_t MVA_PACKETS ;

__attribute__((used)) static void mva_add(struct moving_average_s *m,
                     vlc_tick_t dts, vlc_tick_t duration)
{
    m->packets[m->i_packet % MVA_PACKETS].dts = dts;
    m->packets[m->i_packet % MVA_PACKETS].duration = duration;
    m->packets[m->i_packet % MVA_PACKETS].diff = duration;
    m->i_packet++;
}
