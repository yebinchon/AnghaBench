
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_fifo; } ;
typedef TYPE_1__ sout_stream_id_sys_t ;
typedef int block_t ;


 int block_FifoPut (int ,int *) ;

void rtp_packetize_send( sout_stream_id_sys_t *id, block_t *out )
{
    block_FifoPut( id->p_fifo, out );
}
