
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef size_t uint16_t ;
struct rtp_pkt {TYPE_7__* buffer; scalar_t__ rtp_ts; } ;
struct rist_flow {size_t ri; size_t wi; scalar_t__ reset; scalar_t__ hi_timestamp; scalar_t__ rtp_latency; struct rtp_pkt* buffer; } ;
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_10__ {int b_flag_discontinuity; int i_lost_packets; } ;
typedef TYPE_2__ stream_sys_t ;
struct TYPE_11__ {int i_buffer; int p_buffer; } ;
typedef TYPE_3__ block_t ;
struct TYPE_12__ {int i_buffer; int p_buffer; } ;


 int RTP_HEADER_SIZE ;
 TYPE_3__* block_Alloc (int) ;
 int block_Release (TYPE_7__*) ;
 int memcpy (int ,int,int) ;
 int msg_Dbg (TYPE_1__*,char*,size_t,size_t,size_t) ;

__attribute__((used)) static block_t *rist_dequeue(stream_t *p_access, struct rist_flow *flow)
{
    stream_sys_t *p_sys = p_access->p_sys;
    block_t *pktout = ((void*)0);
    struct rtp_pkt *pkt;
    uint16_t idx;
    if (flow->ri == flow->wi || flow->reset > 0)
        return ((void*)0);

    idx = flow->ri;
    bool found_data = 0;
    uint16_t loss_amount = 0;
    while(idx++ != flow->wi) {

        pkt = &(flow->buffer[idx]);
        if (!pkt->buffer)
        {

            loss_amount++;




            continue;
        }



        if (flow->hi_timestamp > (uint32_t)(pkt->rtp_ts + flow->rtp_latency))
        {

            int newSize = pkt->buffer->i_buffer - RTP_HEADER_SIZE;
            pktout = block_Alloc(newSize);
            if (pktout)
            {
                pktout->i_buffer = newSize;
                memcpy(pktout->p_buffer, pkt->buffer->p_buffer + RTP_HEADER_SIZE, newSize);

                flow->ri = idx;

                found_data = 1;
            }
            block_Release(pkt->buffer);
            pkt->buffer = ((void*)0);
            break;
        }

    }

    if (loss_amount > 0 && found_data == 1)
    {

        msg_Dbg(p_access, "Packet NOT RECOVERED, %d packet(s), Window: [%d:%d]", loss_amount,
            flow->ri, flow->wi);
        p_sys->i_lost_packets += loss_amount;
        p_sys->b_flag_discontinuity = 1;
    }

    return pktout;
}
