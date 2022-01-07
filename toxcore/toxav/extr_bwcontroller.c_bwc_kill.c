
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rb; } ;
struct TYPE_6__ {TYPE_1__ rcvpkt; int friend_number; int m; } ;
typedef TYPE_2__ BWController ;


 int BWC_PACKET_ID ;
 int free (TYPE_2__*) ;
 int m_callback_rtp_packet (int ,int ,int ,int *,int *) ;
 int rb_kill (int ) ;

void bwc_kill(BWController *bwc)
{
    if (!bwc)
        return;

    m_callback_rtp_packet(bwc->m, bwc->friend_number, BWC_PACKET_ID, ((void*)0), ((void*)0));

    rb_kill(bwc->rcvpkt.rb);
    free(bwc);
}
