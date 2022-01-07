
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sout_stream_id_sys_t ;
typedef int block_t ;


 int rtp_packetize_g726 (int *,int *,int) ;

__attribute__((used)) static int rtp_packetize_g726_24( sout_stream_id_sys_t *id, block_t *in )
{
    return rtp_packetize_g726( id, in, 8 );
}
