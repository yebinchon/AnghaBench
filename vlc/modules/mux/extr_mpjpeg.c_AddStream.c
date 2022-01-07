
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int i_nb_inputs; } ;
typedef TYPE_2__ sout_mux_t ;
struct TYPE_9__ {TYPE_1__* p_fmt; } ;
typedef TYPE_3__ sout_input_t ;
struct TYPE_7__ {scalar_t__ i_codec; } ;


 scalar_t__ VLC_CODEC_MJPG ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Dbg (TYPE_2__*,char*) ;

__attribute__((used)) static int AddStream( sout_mux_t *p_mux, sout_input_t *p_input )
{
    if( p_mux->i_nb_inputs > 1 )
    {
        msg_Dbg( p_mux, "only 1 input allowed" );
        return VLC_EGENERIC;
    }

    msg_Dbg( p_mux, "adding input" );
    if( p_input->p_fmt->i_codec != VLC_CODEC_MJPG )
        return VLC_EGENERIC;

    return VLC_SUCCESS;
}
