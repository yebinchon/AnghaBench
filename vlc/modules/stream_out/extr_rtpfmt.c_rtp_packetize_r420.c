
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sout_stream_id_sys_t ;
typedef int block_t ;


 int VLC_CODEC_R420 ;
 int rtp_packetize_rawvideo (int *,int *,int ) ;

__attribute__((used)) static int rtp_packetize_r420( sout_stream_id_sys_t *id, block_t *in )
{
    return rtp_packetize_rawvideo( id, in, VLC_CODEC_R420 );
}
