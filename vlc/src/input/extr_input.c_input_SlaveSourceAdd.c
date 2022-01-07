
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int input_thread_t ;
struct TYPE_9__ {int i_last_es_cat; int i_last_es_id; int p_es_out_display; int slave; int i_slave; TYPE_1__* master; } ;
typedef TYPE_2__ input_thread_private_t ;
struct TYPE_10__ {int b_slave_sub; int p_demux; } ;
typedef TYPE_3__ input_source_t ;
typedef enum slave_type { ____Placeholder_slave_type } slave_type ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;
struct TYPE_8__ {int p_demux; } ;


 int AUDIO_ES ;
 int DEMUX_GET_TIME ;
 int DEMUX_SET_TIME ;
 int ES_OUT_SET_ES_BY_ID ;
 int ES_OUT_SET_ES_DEFAULT_BY_ID ;
 int InputSourceDestroy (TYPE_3__*) ;
 TYPE_3__* InputSourceNew (int *,char const*,char const*,int const) ;
 int InputUpdateMeta (int *,int ) ;
 unsigned int SLAVE_ADD_CANFAIL ;
 unsigned int SLAVE_ADD_FORCED ;
 unsigned int SLAVE_ADD_SET_TIME ;


 int SPU_ES ;
 int TAB_APPEND (int ,int ,TYPE_3__*) ;
 int UNKNOWN_ES ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int assert (int) ;
 scalar_t__ demux_Control (int ,int ,int ,...) ;
 int es_out_Control (int ,int ,int,...) ;
 TYPE_2__* input_priv (int *) ;
 int msg_Dbg (int *,char*,char*,char const*,int const) ;
 int msg_Err (int *,char*) ;
 int msg_Warn (int *,char*,char const*) ;
 int vlc_assert_unreachable () ;

__attribute__((used)) static int input_SlaveSourceAdd( input_thread_t *p_input,
                                 enum slave_type i_type, const char *psz_uri,
                                 unsigned i_flags )
{
    input_thread_private_t *priv = input_priv(p_input);
    const char *psz_forced_demux;
    const bool b_can_fail = i_flags & SLAVE_ADD_CANFAIL;
    const bool b_forced = i_flags & SLAVE_ADD_FORCED;
    const bool b_set_time = i_flags & SLAVE_ADD_SET_TIME;
    enum es_format_category_e i_cat;

    switch( i_type )
    {
    case 128:
        psz_forced_demux = "subtitle";
        i_cat = SPU_ES;
        break;
    case 129:
        psz_forced_demux = ((void*)0);
        i_cat = AUDIO_ES;
        break;
    default:
        vlc_assert_unreachable();
    }

    msg_Dbg( p_input, "loading %s slave: %s (forced: %d)",
             i_cat == SPU_ES ? "spu" : "audio", psz_uri, b_forced );

    priv->i_last_es_cat = UNKNOWN_ES;

    input_source_t *p_source = InputSourceNew( p_input, psz_uri,
                                               psz_forced_demux,
                                               b_can_fail || psz_forced_demux );

    if( psz_forced_demux && p_source == ((void*)0) )
        p_source = InputSourceNew( p_input, psz_uri, ((void*)0), b_can_fail );

    if( p_source == ((void*)0) )
    {
        msg_Warn( p_input, "failed to add %s as slave", psz_uri );
        return VLC_EGENERIC;
    }

    if( i_type == 129 )
    {
        if( b_set_time )
        {
            vlc_tick_t i_time;


            if( demux_Control( priv->master->p_demux, DEMUX_GET_TIME, &i_time ) )
            {
                msg_Err( p_input, "demux doesn't like DEMUX_GET_TIME" );
                InputSourceDestroy( p_source );
                return VLC_EGENERIC;
            }

            if( demux_Control( p_source->p_demux,
                               DEMUX_SET_TIME, i_time, 1 ) )
            {
                msg_Err( p_input, "seek failed for new slave" );
                InputSourceDestroy( p_source );
                return VLC_EGENERIC;
            }
        }


        InputUpdateMeta( p_input, p_source->p_demux );
    }
    else
        p_source->b_slave_sub = 1;

    TAB_APPEND( priv->i_slave, priv->slave, p_source );

    if( !b_forced || priv->i_last_es_cat != i_cat )
        return VLC_SUCCESS;

    assert( priv->i_last_es_id != -1 );

    es_out_Control( priv->p_es_out_display, ES_OUT_SET_ES_DEFAULT_BY_ID,
                    priv->i_last_es_id );
    es_out_Control( priv->p_es_out_display, ES_OUT_SET_ES_BY_ID,
                    priv->i_last_es_id, 0 );

    return VLC_SUCCESS;
}
