
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
struct mva_packet_s {int dts; } ;
struct moving_average_s {int dummy; } ;


 struct mva_packet_s* mva_getLastPacket (struct moving_average_s*) ;

__attribute__((used)) static vlc_tick_t mva_getLastDTS(struct moving_average_s *m)
{
    struct mva_packet_s *p = mva_getLastPacket(m);
    return p ? p->dts : 0;
}
