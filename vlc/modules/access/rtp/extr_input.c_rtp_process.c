
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_14__ {int autodetect; int session; int * srtp; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_15__ {int i_buffer; int p_buffer; } ;
typedef TYPE_3__ block_t ;


 int block_Release (TYPE_3__*) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int rtp_autodetect (TYPE_1__*,int ,TYPE_3__*) ;
 int rtp_ptype (TYPE_3__*) ;
 int rtp_queue (TYPE_1__*,int ,TYPE_3__*) ;
 scalar_t__ srtp_recv (int *,int ,size_t*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void rtp_process (demux_t *demux, block_t *block)
{
    demux_sys_t *sys = demux->p_sys;

    if (block->i_buffer < 2)
        goto drop;
    const uint8_t ptype = rtp_ptype (block);
    if (ptype >= 72 && ptype <= 76)
        goto drop;
    if (unlikely(sys->autodetect))
    {
        rtp_autodetect (demux, sys->session, block);
        sys->autodetect = 0;
    }

    rtp_queue (demux, sys->session, block);
    return;
drop:
    block_Release (block);
}
