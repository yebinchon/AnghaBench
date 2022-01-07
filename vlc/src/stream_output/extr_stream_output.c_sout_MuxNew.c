
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int b_add_stream_any_time; int b_waiting_stream; int * pf_control; int psz_mux; int * p_module; int i_add_stream_start; int * p_sys; int * pp_inputs; scalar_t__ i_nb_inputs; int * pf_mux; int * pf_delstream; int * pf_addstream; int * p_access; int p_cfg; TYPE_2__* p_sout; } ;
typedef TYPE_1__ sout_mux_t ;
struct TYPE_12__ {int i_out_pace_nocontrol; } ;
typedef TYPE_2__ sout_instance_t ;
typedef int sout_access_out_t ;


 int FREENULL (int ) ;
 int MUX_CAN_ADD_STREAM_WHILE_MUXING ;
 int MUX_GET_ADD_STREAM_WAIT ;
 int VLC_TICK_INVALID ;
 char* config_ChainCreate (int *,int *,char const*) ;
 int free (char*) ;
 int * module_need (TYPE_1__*,char*,int ,int) ;
 int msg_Dbg (TYPE_2__*,char*) ;
 scalar_t__ sout_MuxControl (TYPE_1__*,int ,int*) ;
 TYPE_1__* vlc_custom_create (TYPE_2__*,int,char*) ;
 int vlc_object_delete (TYPE_1__*) ;

sout_mux_t * sout_MuxNew( sout_instance_t *p_sout, const char *psz_mux,
                          sout_access_out_t *p_access )
{
    sout_mux_t *p_mux;
    char *psz_next;

    p_mux = vlc_custom_create( p_sout, sizeof( *p_mux ), "mux" );
    if( p_mux == ((void*)0) )
        return ((void*)0);

    p_mux->p_sout = p_sout;
    psz_next = config_ChainCreate( &p_mux->psz_mux, &p_mux->p_cfg, psz_mux );
    free( psz_next );

    p_mux->p_access = p_access;
    p_mux->pf_control = ((void*)0);
    p_mux->pf_addstream = ((void*)0);
    p_mux->pf_delstream = ((void*)0);
    p_mux->pf_mux = ((void*)0);
    p_mux->i_nb_inputs = 0;
    p_mux->pp_inputs = ((void*)0);

    p_mux->p_sys = ((void*)0);
    p_mux->p_module = ((void*)0);

    p_mux->b_add_stream_any_time = 0;
    p_mux->b_waiting_stream = 1;
    p_mux->i_add_stream_start = VLC_TICK_INVALID;

    p_mux->p_module =
        module_need( p_mux, "sout mux", p_mux->psz_mux, 1 );

    if( p_mux->p_module == ((void*)0) )
    {
        FREENULL( p_mux->psz_mux );

        vlc_object_delete(p_mux);
        return ((void*)0);
    }


    if( p_mux->pf_control )
    {
        int b_answer = 0;

        if( sout_MuxControl( p_mux, MUX_CAN_ADD_STREAM_WHILE_MUXING,
                             &b_answer ) )
        {
            b_answer = 0;
        }

        if( b_answer )
        {
            msg_Dbg( p_sout, "muxer support adding stream at any time" );
            p_mux->b_add_stream_any_time = 1;
            p_mux->b_waiting_stream = 0;



            if( !p_sout->i_out_pace_nocontrol )
            {
                b_answer = 1;
            }
            else if( sout_MuxControl( p_mux, MUX_GET_ADD_STREAM_WAIT,
                                      &b_answer ) )
            {
                b_answer = 0;
            }

            if( b_answer )
            {
                msg_Dbg( p_sout, "muxer prefers to wait for all ES before "
                         "starting to mux" );
                p_mux->b_waiting_stream = 1;
            }
        }
    }

    return p_mux;
}
