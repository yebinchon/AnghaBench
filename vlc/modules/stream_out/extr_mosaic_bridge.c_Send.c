
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_6__ {TYPE_3__* p_decoder; } ;
typedef TYPE_2__ sout_stream_sys_t ;
typedef int block_t ;
struct TYPE_7__ {int (* pf_decode ) (TYPE_3__*,int *) ;} ;


 int VLCDEC_SUCCESS ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int block_ChainRelease (int *) ;
 int stub1 (TYPE_3__*,int *) ;

__attribute__((used)) static int Send( sout_stream_t *p_stream, void *id, block_t *p_buffer )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;

    if ( (sout_stream_sys_t *)id != p_sys )
    {
        block_ChainRelease( p_buffer );
        return VLC_SUCCESS;
    }

    int ret = p_sys->p_decoder->pf_decode( p_sys->p_decoder, p_buffer );
    return ret == VLCDEC_SUCCESS ? VLC_SUCCESS : VLC_EGENERIC;
}
