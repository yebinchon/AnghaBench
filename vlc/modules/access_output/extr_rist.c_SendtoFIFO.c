
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_access_out_t ;
struct TYPE_10__ {int p_fifo; int ssrc; int rtp_counter; } ;
typedef TYPE_2__ sout_access_out_sys_t ;
struct TYPE_11__ {int i_dts; int * p_buffer; } ;
typedef TYPE_3__ block_t ;


 int MPEG_II_TRANSPORT_STREAM ;
 TYPE_3__* block_Duplicate (TYPE_3__*) ;
 int block_FifoPut (int ,TYPE_3__*) ;
 int rtp_get_ts (int ) ;
 int rtp_set_hdr (int *) ;
 int rtp_set_int_ssrc (int *,int ) ;
 int rtp_set_seqnum (int *,int ) ;
 int rtp_set_timestamp (int *,int ) ;
 int rtp_set_type (int *,int ) ;

__attribute__((used)) static void SendtoFIFO( sout_access_out_t *p_access, block_t *buffer )
{
    sout_access_out_sys_t *p_sys = p_access->p_sys;
    uint16_t seq = p_sys->rtp_counter++;


    uint8_t *bufhdr = buffer->p_buffer;
    rtp_set_hdr(bufhdr);
    rtp_set_type(bufhdr, MPEG_II_TRANSPORT_STREAM);
    rtp_set_seqnum(bufhdr, seq);
    rtp_set_int_ssrc(bufhdr, p_sys->ssrc);
    uint32_t pkt_ts = rtp_get_ts(buffer->i_dts);
    rtp_set_timestamp(bufhdr, pkt_ts);

    block_t *pkt = block_Duplicate(buffer);
    block_FifoPut( p_sys->p_fifo, pkt );
}
