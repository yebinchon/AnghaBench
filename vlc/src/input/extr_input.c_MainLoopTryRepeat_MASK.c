#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ i_int; } ;
typedef  TYPE_2__ vlc_value_t ;
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_8__ {scalar_t__ i_start; TYPE_1__* master; } ;
typedef  TYPE_3__ input_thread_private_t ;
struct TYPE_6__ {scalar_t__ i_title_start; scalar_t__ i_title_offset; scalar_t__ i_title; scalar_t__ i_seekpoint_start; scalar_t__ i_seekpoint_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  INPUT_CONTROL_SET_SEEKPOINT ; 
 int /*<<< orphan*/  INPUT_CONTROL_SET_TITLE ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,float,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC7( input_thread_t *p_input )
{
    int i_repeat = FUNC5( p_input, "input-repeat" );
    if( i_repeat <= 0 )
        return VLC_EGENERIC;

    vlc_value_t val;

    FUNC4( p_input, "repeating the same input (%d)", i_repeat );
    if( i_repeat > 0 )
    {
        i_repeat--;
        FUNC6( p_input, "input-repeat", i_repeat );
    }

    input_thread_private_t *priv = FUNC3(p_input);
    /* Seek to start title/seekpoint */
    val.i_int = priv->master->i_title_start - priv->master->i_title_offset;
    if( val.i_int < 0 || val.i_int >= priv->master->i_title )
        val.i_int = 0;
    FUNC0( p_input,
                       INPUT_CONTROL_SET_TITLE, &val );

    val.i_int = priv->master->i_seekpoint_start -
                priv->master->i_seekpoint_offset;
    if( val.i_int > 0 /* TODO: check upper boundary */ )
        FUNC0( p_input,
                           INPUT_CONTROL_SET_SEEKPOINT, &val );

    /* Seek to start position */
    if( priv->i_start > 0 )
        FUNC2( p_input, priv->i_start, false );
    else
        FUNC1( p_input, 0.0f, false );

    return VLC_SUCCESS;
}