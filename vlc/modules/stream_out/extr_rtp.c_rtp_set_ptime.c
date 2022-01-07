
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int clock_rate; size_t channels; } ;
struct TYPE_6__ {int i_mtu; TYPE_1__ rtp_fmt; } ;
typedef TYPE_2__ sout_stream_id_sys_t ;


 size_t rtp_mtu (TYPE_2__*) ;

__attribute__((used)) static void
rtp_set_ptime (sout_stream_id_sys_t *id, unsigned ptime_ms, size_t bytes)
{

    size_t spl = (id->rtp_fmt.clock_rate - 1) * ptime_ms / 1000 + 1;
    bytes *= id->rtp_fmt.channels;
    spl *= bytes;

    if (spl < rtp_mtu (id))
        id->i_mtu = 12 + spl;
    else
        id->i_mtu = 12 + (((id->i_mtu - 12) / bytes) * bytes);
}
