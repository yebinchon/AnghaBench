#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_4__ {int i_slave; scalar_t__ i_attachment; int /*<<< orphan*/ * p_resource; int /*<<< orphan*/  p_sout; TYPE_2__* p_item; int /*<<< orphan*/ * attachment_demux; int /*<<< orphan*/ * attachment; int /*<<< orphan*/ * stats; scalar_t__ p_es_out_display; scalar_t__ p_es_out; scalar_t__ i_seekpoint_offset; scalar_t__ i_title_offset; int /*<<< orphan*/  master; int /*<<< orphan*/ * slave; } ;
typedef  TYPE_1__ input_thread_private_t ;
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  p_stats; } ;
typedef  TYPE_2__ input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  END_S ; 
 int /*<<< orphan*/  ES_OUT_MODE_END ; 
 int /*<<< orphan*/  ES_OUT_MODE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14( input_thread_t * p_input )
{
    input_thread_private_t *priv = FUNC6(p_input);

    /* We are at the end */
    FUNC5( p_input, END_S, VLC_TICK_INVALID );

    /* Stop es out activity */
    FUNC3( priv->p_es_out, ES_OUT_MODE_NONE );

    /* Delete slave */
    for( int i = 0; i < priv->i_slave; i++ )
        FUNC0( priv->slave[i] );
    FUNC4( priv->slave );

    /* Clean up master */
    FUNC0( priv->master );
    priv->i_title_offset = 0;
    priv->i_seekpoint_offset = 0;

    /* Unload all modules */
    if( priv->p_es_out )
        FUNC2( priv->p_es_out );
    FUNC3( priv->p_es_out_display, ES_OUT_MODE_END );

    if( priv->stats != NULL )
    {
        input_item_t *item = priv->p_item;
        /* make sure we are up to date */
        FUNC12( &item->lock );
        FUNC10( priv->stats, item->p_stats );
        FUNC13( &item->lock );
    }

    FUNC12( &priv->p_item->lock );
    if( priv->i_attachment > 0 )
    {
        for( int i = 0; i < priv->i_attachment; i++ )
            FUNC11( priv->attachment[i] );
        FUNC1( priv->i_attachment, priv->attachment );
        FUNC4( priv->attachment_demux);
        priv->attachment_demux = NULL;
    }

    FUNC13( &FUNC6(p_input)->p_item->lock );

    /* */
    FUNC8( FUNC6(p_input)->p_resource,
                                 FUNC6(p_input)->p_sout, NULL );
    FUNC9( FUNC6(p_input)->p_resource, NULL );
    if( FUNC6(p_input)->p_resource )
    {
        FUNC7( FUNC6(p_input)->p_resource );
        FUNC6(p_input)->p_resource = NULL;
    }
}