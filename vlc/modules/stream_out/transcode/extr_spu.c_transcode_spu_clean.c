
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sout_stream_t ;
struct TYPE_3__ {scalar_t__ encoder; } ;
typedef TYPE_1__ sout_stream_id_sys_t ;


 int VLC_UNUSED (int *) ;
 int transcode_encoder_close (scalar_t__) ;
 int transcode_encoder_delete (scalar_t__) ;

void transcode_spu_clean( sout_stream_t *p_stream, sout_stream_id_sys_t *id)
{
    VLC_UNUSED(p_stream);


    if( id->encoder )
    {
        transcode_encoder_close( id->encoder );
        transcode_encoder_delete( id->encoder );
    }
}
