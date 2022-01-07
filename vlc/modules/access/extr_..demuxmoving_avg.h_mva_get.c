
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int vlc_tick_t ;
typedef struct mva_packet_s {scalar_t__ diff; } const mva_packet_s ;
struct moving_average_s {unsigned int i_packet; struct mva_packet_s const* packets; } ;


 unsigned int MVA_PACKETS ;
 scalar_t__ likely (int) ;

__attribute__((used)) static vlc_tick_t mva_get(const struct moving_average_s *m)
{
    unsigned start;
    const struct mva_packet_s *min = ((void*)0), *max = ((void*)0);

    if(likely(m->i_packet >= MVA_PACKETS))
    {
        start = m->i_packet - MVA_PACKETS;
        for(unsigned i = start; i < m->i_packet; i++)
        {
            if(!min || m->packets[i % MVA_PACKETS].diff < min->diff)
                min = &m->packets[i % MVA_PACKETS];

            if(!max || m->packets[i % MVA_PACKETS].diff > max->diff)
                max = &m->packets[i % MVA_PACKETS];
        }
    }
    else start = 0;

    unsigned count = 0;
    vlc_tick_t avgdiff = 0;
    for(unsigned i = start; i < m->i_packet; i++)
    {
        if(&m->packets[i % MVA_PACKETS] == min ||
            &m->packets[i % MVA_PACKETS] == max)
            continue;
        avgdiff += m->packets[i % MVA_PACKETS].diff;
        count++;
    }

    return count ? avgdiff / count : 0;
}
