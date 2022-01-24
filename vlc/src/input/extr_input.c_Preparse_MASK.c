#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_4__ {TYPE_1__* master; int /*<<< orphan*/  p_item; int /*<<< orphan*/  interrupt; int /*<<< orphan*/  input; } ;
typedef  TYPE_2__ input_thread_private_t ;
struct TYPE_3__ {int /*<<< orphan*/  p_demux; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEMUX_IS_PLAYLIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC7( void *data )
{
    input_thread_private_t *priv = data;
    input_thread_t *p_input = &priv->input;

    FUNC6(&priv->interrupt);

    if( !FUNC1( p_input ) )
    {   /* if the demux is a playlist, call Mainloop that will call
         * demux_Demux in order to fetch sub items */
        bool b_is_playlist = false;

        if ( FUNC5( priv->p_item )
          && FUNC3( priv->master->p_demux, DEMUX_IS_PLAYLIST,
                            &b_is_playlist ) )
            b_is_playlist = false;
        if( b_is_playlist )
            FUNC2( p_input, false );
        FUNC0( p_input );
    }

    FUNC4( p_input );
    return NULL;
}