
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {double f_float; } ;
typedef TYPE_1__ vlc_value_t ;
typedef scalar_t__ vlc_tick_t ;
typedef int vlc_meta_t ;
typedef int input_thread_t ;
struct TYPE_12__ {int b_out_pace_control; int i_slave; TYPE_4__* p_sout; int * p_es_out; int * p_resource; int p_es_out_display; TYPE_6__* p_item; TYPE_3__** slave; int b_preparsing; int normal_time; TYPE_3__* master; int rate; } ;
typedef TYPE_2__ input_thread_private_t ;
struct TYPE_13__ {int p_demux; } ;
typedef TYPE_3__ input_source_t ;
struct TYPE_15__ {char* psz_uri; } ;
struct TYPE_14__ {scalar_t__ i_out_pace_nocontrol; } ;


 int DEMUX_GET_LENGTH ;
 int ERROR_S ;
 int ES_OUT_MODE_END ;
 int INPUT_CONTROL_SET_RATE ;
 int InitPrograms (int *) ;
 scalar_t__ InitSout (int *) ;
 int InitTitle (int *,int) ;
 int InputMetaUser (int *,int *) ;
 int InputSourceMeta (int *,TYPE_3__*,int *) ;
 TYPE_3__* InputSourceNew (int *,char*,int *,int) ;
 int LoadSlaves (int *) ;
 int OPENING_S ;
 int PLAYING_S ;
 int SetSubtitlesOptions (int *) ;
 int StartTitle (int *) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 scalar_t__ demux_Control (int ,int ,scalar_t__*) ;
 int es_out_ControlSetMeta (int *,int *) ;
 int es_out_Delete (int *) ;
 int es_out_SetMode (int ,int ) ;
 int input_ChangeState (int *,int ,scalar_t__) ;
 int input_ControlPushHelper (int *,int ,TYPE_1__*) ;
 int * input_EsOutTimeshiftNew (int *,int ,int ) ;
 int input_SendEventCache (int *,double) ;
 int input_SendEventTimes (int *,double,scalar_t__,int ,scalar_t__) ;
 scalar_t__ input_item_GetDuration (TYPE_6__*) ;
 int input_item_IsPreparsed (TYPE_6__*) ;
 TYPE_2__* input_priv (int *) ;
 int input_resource_Release (int *) ;
 int input_resource_RequestSout (int *,TYPE_4__*,int *) ;
 int input_resource_SetInput (int *,int *) ;
 int msg_Dbg (int *,char*,...) ;
 double var_GetFloat (int *,char*) ;
 int var_SetBool (int *,char*,int) ;
 int var_SetInteger (int *,char*,int ) ;
 int var_SetString (int *,char*,char*) ;
 scalar_t__ var_Type (int ,char*) ;
 int vlc_meta_Delete (int *) ;
 int * vlc_meta_New () ;
 int vlc_object_parent (int *) ;
 scalar_t__ vlc_tick_now () ;

__attribute__((used)) static int Init( input_thread_t * p_input )
{
    input_thread_private_t *priv = input_priv(p_input);
    input_source_t *master;


    input_ChangeState( p_input, OPENING_S, VLC_TICK_INVALID );
    input_SendEventCache( p_input, 0.0 );

    if( var_Type( vlc_object_parent(p_input), "meta-file" ) )
    {
        msg_Dbg( p_input, "Input is a meta file: disabling unneeded options" );
        var_SetString( p_input, "sout", "" );
        var_SetBool( p_input, "sout-all", 0 );
        var_SetString( p_input, "input-slave", "" );
        var_SetInteger( p_input, "input-repeat", 0 );
        var_SetString( p_input, "sub-file", "" );
        var_SetBool( p_input, "sub-autodetect-file", 0 );
    }







    priv->p_es_out = input_EsOutTimeshiftNew( p_input, priv->p_es_out_display, priv->rate );
    if( priv->p_es_out == ((void*)0) )
        goto error;


    master = InputSourceNew( p_input, priv->p_item->psz_uri, ((void*)0), 0 );
    if( master == ((void*)0) )
        goto error;
    priv->master = master;

    InitTitle( p_input, 0 );



    vlc_tick_t i_length;
    if( demux_Control( master->p_demux, DEMUX_GET_LENGTH, &i_length ) )
        i_length = VLC_TICK_INVALID;
    if( i_length == VLC_TICK_INVALID )
        i_length = input_item_GetDuration( priv->p_item );

    input_SendEventTimes( p_input, 0.0, VLC_TICK_INVALID, priv->normal_time,
                          i_length );

    if( !priv->b_preparsing )
    {
        StartTitle( p_input );
        SetSubtitlesOptions( p_input );
        LoadSlaves( p_input );
        InitPrograms( p_input );

        double f_rate = var_GetFloat( p_input, "rate" );
        if( f_rate != 0.0 && f_rate != 1.0 )
        {
            vlc_value_t val = { .f_float = f_rate };
            input_ControlPushHelper( p_input, INPUT_CONTROL_SET_RATE, &val );
        }
    }

    if( !priv->b_preparsing && priv->p_sout )
    {
        priv->b_out_pace_control = priv->p_sout->i_out_pace_nocontrol > 0;

        msg_Dbg( p_input, "starting in %ssync mode",
                 priv->b_out_pace_control ? "a" : "" );
    }

    if (!input_item_IsPreparsed(input_priv(p_input)->p_item))
    {
        vlc_meta_t *p_meta = vlc_meta_New();
        if( p_meta != ((void*)0) )
        {

            InputMetaUser( p_input, p_meta );


            InputSourceMeta( p_input, master, p_meta );


            for( int i = 0; i < priv->i_slave; i++ )
                InputSourceMeta( p_input, priv->slave[i], p_meta );

            es_out_ControlSetMeta( priv->p_es_out, p_meta );
            vlc_meta_Delete( p_meta );
        }
    }

    msg_Dbg( p_input, "`%s' successfully opened",
             input_priv(p_input)->p_item->psz_uri );


    input_ChangeState( p_input, PLAYING_S, vlc_tick_now() );

    return VLC_SUCCESS;

error:
    input_ChangeState( p_input, ERROR_S, VLC_TICK_INVALID );

    if( input_priv(p_input)->p_es_out )
        es_out_Delete( input_priv(p_input)->p_es_out );
    es_out_SetMode( input_priv(p_input)->p_es_out_display, ES_OUT_MODE_END );
    if( input_priv(p_input)->p_resource )
    {
        if( input_priv(p_input)->p_sout )
            input_resource_RequestSout( input_priv(p_input)->p_resource,
                                         input_priv(p_input)->p_sout, ((void*)0) );
        input_resource_SetInput( input_priv(p_input)->p_resource, ((void*)0) );
        if( input_priv(p_input)->p_resource )
        {
            input_resource_Release( input_priv(p_input)->p_resource );
            input_priv(p_input)->p_resource = ((void*)0);
        }
    }


    input_priv(p_input)->p_es_out = ((void*)0);
    input_priv(p_input)->p_sout = ((void*)0);

    return VLC_EGENERIC;
}
