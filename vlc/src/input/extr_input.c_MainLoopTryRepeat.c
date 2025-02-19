
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ i_int; } ;
typedef TYPE_2__ vlc_value_t ;
typedef int input_thread_t ;
struct TYPE_8__ {scalar_t__ i_start; TYPE_1__* master; } ;
typedef TYPE_3__ input_thread_private_t ;
struct TYPE_6__ {scalar_t__ i_title_start; scalar_t__ i_title_offset; scalar_t__ i_title; scalar_t__ i_seekpoint_start; scalar_t__ i_seekpoint_offset; } ;


 int INPUT_CONTROL_SET_SEEKPOINT ;
 int INPUT_CONTROL_SET_TITLE ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int input_ControlPushHelper (int *,int ,TYPE_2__*) ;
 int input_SetPosition (int *,float,int) ;
 int input_SetTime (int *,scalar_t__,int) ;
 TYPE_3__* input_priv (int *) ;
 int msg_Dbg (int *,char*,int) ;
 int var_GetInteger (int *,char*) ;
 int var_SetInteger (int *,char*,int) ;

__attribute__((used)) static int MainLoopTryRepeat( input_thread_t *p_input )
{
    int i_repeat = var_GetInteger( p_input, "input-repeat" );
    if( i_repeat <= 0 )
        return VLC_EGENERIC;

    vlc_value_t val;

    msg_Dbg( p_input, "repeating the same input (%d)", i_repeat );
    if( i_repeat > 0 )
    {
        i_repeat--;
        var_SetInteger( p_input, "input-repeat", i_repeat );
    }

    input_thread_private_t *priv = input_priv(p_input);

    val.i_int = priv->master->i_title_start - priv->master->i_title_offset;
    if( val.i_int < 0 || val.i_int >= priv->master->i_title )
        val.i_int = 0;
    input_ControlPushHelper( p_input,
                       INPUT_CONTROL_SET_TITLE, &val );

    val.i_int = priv->master->i_seekpoint_start -
                priv->master->i_seekpoint_offset;
    if( val.i_int > 0 )
        input_ControlPushHelper( p_input,
                           INPUT_CONTROL_SET_SEEKPOINT, &val );


    if( priv->i_start > 0 )
        input_SetTime( p_input, priv->i_start, 0 );
    else
        input_SetPosition( p_input, 0.0f, 0 );

    return VLC_SUCCESS;
}
