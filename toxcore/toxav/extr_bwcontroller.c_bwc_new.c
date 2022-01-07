
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct BWController_s {int dummy; } ;
struct TYPE_9__ {scalar_t__ rb_s; int rb; } ;
struct TYPE_8__ {int lfu; int lsu; } ;
struct TYPE_10__ {void (* mcb ) (TYPE_3__*,int ,float,void*) ;TYPE_2__ rcvpkt; TYPE_1__ cycle; int friend_number; int * m; void* mcb_data; } ;
typedef int Messenger ;
typedef TYPE_3__ BWController ;


 int BWC_AVG_PKT_COUNT ;
 int BWC_PACKET_ID ;
 int bwc_handle_data ;
 TYPE_3__* calloc (int,int) ;
 int current_time_monotonic () ;
 int m_callback_rtp_packet (int *,int ,int ,int ,TYPE_3__*) ;
 int rb_new (int) ;
 int rb_write (int ,scalar_t__) ;

BWController *bwc_new(Messenger *m, uint32_t friendnumber,
                      void (*mcb) (BWController *, uint32_t, float, void *),
                      void *udata)
{
    BWController *retu = calloc(sizeof(struct BWController_s), 1);

    retu->mcb = mcb;
    retu->mcb_data = udata;
    retu->m = m;
    retu->friend_number = friendnumber;
    retu->cycle.lsu = retu->cycle.lfu = current_time_monotonic();
    retu->rcvpkt.rb = rb_new(BWC_AVG_PKT_COUNT);


    int i = 0;

    for (; i < BWC_AVG_PKT_COUNT; i ++)
        rb_write(retu->rcvpkt.rb, retu->rcvpkt.rb_s + i);

    m_callback_rtp_packet(m, friendnumber, BWC_PACKET_ID, bwc_handle_data, retu);

    return retu;
}
