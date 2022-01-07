
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int ssize_t ;
struct TYPE_12__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_access_out_t ;
struct TYPE_13__ {int b_mtu_warning; scalar_t__ i_packet_size; TYPE_10__* p_pktbuffer; } ;
typedef TYPE_2__ sout_access_out_sys_t ;
struct TYPE_14__ {scalar_t__ i_buffer; size_t p_buffer; struct TYPE_14__* p_next; int i_dts; } ;
typedef TYPE_3__ block_t ;
struct TYPE_11__ {scalar_t__ i_buffer; scalar_t__ p_buffer; int i_dts; } ;


 scalar_t__ RTP_HEADER_SIZE ;
 int SendtoFIFO (TYPE_1__*,TYPE_10__*) ;
 size_t __MIN (scalar_t__,scalar_t__) ;
 int block_ChainRelease (TYPE_3__*) ;
 int block_Release (TYPE_3__*) ;
 int memcpy (scalar_t__,size_t,size_t) ;
 int msg_Warn (TYPE_1__*,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static ssize_t Write( sout_access_out_t *p_access, block_t *p_buffer )
{
    sout_access_out_sys_t *p_sys = p_access->p_sys;
    int i_len = 0;

    while( p_buffer )
    {
        block_t *p_next;
        int i_block_split = 0;

        if( !p_sys->b_mtu_warning && p_buffer->i_buffer > p_sys->i_packet_size )
        {
            msg_Warn( p_access, "Buffer data size (%zu) > configured packet size (%zu), you " "should probably increase the configured packet size", p_buffer->i_buffer,

                p_sys->i_packet_size );
            p_sys->b_mtu_warning = 1;
        }


        if( p_sys->p_pktbuffer->i_buffer + p_buffer->i_buffer > p_sys->i_packet_size )
        {
            SendtoFIFO(p_access, p_sys->p_pktbuffer);
            p_sys->p_pktbuffer->i_buffer = RTP_HEADER_SIZE;
        }

        i_len += p_buffer->i_buffer;

        while( p_buffer->i_buffer )
        {

            size_t i_write = __MIN( p_buffer->i_buffer, p_sys->i_packet_size );

            i_block_split++;

            if( p_sys->p_pktbuffer->i_buffer == RTP_HEADER_SIZE )
            {
                p_sys->p_pktbuffer->i_dts = p_buffer->i_dts;
            }

            memcpy( p_sys->p_pktbuffer->p_buffer + p_sys->p_pktbuffer->i_buffer,
                    p_buffer->p_buffer, i_write );

            p_sys->p_pktbuffer->i_buffer += i_write;
            p_buffer->p_buffer += i_write;
            p_buffer->i_buffer -= i_write;




            if( p_sys->p_pktbuffer->i_buffer == p_sys->i_packet_size || i_block_split > 1 )
            {
                SendtoFIFO(p_access, p_sys->p_pktbuffer);
                p_sys->p_pktbuffer->i_buffer = RTP_HEADER_SIZE;
            }

        }

        p_next = p_buffer->p_next;
        block_Release( p_buffer );
        p_buffer = p_next;

    }

    if ( i_len <= 0 ) {
        block_ChainRelease( p_buffer );
    }
    return i_len;
}
