
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mva_packet_s {int dummy; } ;
struct moving_average_s {int i_packet; struct mva_packet_s* packets; } ;


 int MVA_PACKETS ;

__attribute__((used)) static struct mva_packet_s * mva_getLastPacket(struct moving_average_s *m)
{
    return m->i_packet > 0 ? &m->packets[(m->i_packet - 1) % MVA_PACKETS] : ((void*)0);
}
