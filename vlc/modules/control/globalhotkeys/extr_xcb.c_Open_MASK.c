#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_setup_t ;
struct TYPE_13__ {TYPE_1__* data; int /*<<< orphan*/  rem; } ;
typedef  TYPE_2__ xcb_screen_iterator_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_14__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ intf_thread_t ;
struct TYPE_15__ {int /*<<< orphan*/  p_connection; scalar_t__ p_symbols; struct TYPE_15__* p_map; struct TYPE_15__* p_keys; int /*<<< orphan*/  thread; int /*<<< orphan*/  root; } ;
typedef  TYPE_4__ intf_sys_t ;
struct TYPE_12__ {int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  Thread ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_LOW ; 
 TYPE_4__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 TYPE_2__ FUNC12 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC13( vlc_object_t *p_this )
{
    intf_thread_t *p_intf = (intf_thread_t *)p_this;
    intf_sys_t *p_sys;
    int ret = VLC_EGENERIC;

    p_intf->p_sys = p_sys = FUNC2( 1, sizeof(*p_sys) );
    if( !p_sys )
        return VLC_ENOMEM;

    int i_screen_default;
    p_sys->p_connection = FUNC5( NULL, &i_screen_default );

    if( FUNC6( p_sys->p_connection ) )
        goto error;

    /* Get the root windows of the default screen */
    const xcb_setup_t* xcbsetup = FUNC8( p_sys->p_connection );
    if( !xcbsetup )
        goto error;
    xcb_screen_iterator_t iter = FUNC12( xcbsetup );
    for( int i = 0; i < i_screen_default; i++ )
    {
        if( !iter.rem )
            break;
        FUNC11( &iter );
    }
    if( !iter.rem )
        goto error;
    p_sys->root = iter.data->root;

    /* */
    p_sys->p_symbols = FUNC9( p_sys->p_connection ); // FIXME
    if( !p_sys->p_symbols )
        goto error;

    if( !FUNC0( p_intf ) )
    {
        ret = VLC_SUCCESS;
        p_intf->p_sys = NULL; /* for Close() */
        goto error;
    }
    FUNC1( p_intf );

    if( FUNC4( &p_sys->thread, Thread, p_intf, VLC_THREAD_PRIORITY_LOW ) )
    {
        if( p_sys->p_map )
        {
            FUNC3( p_sys->p_map->p_keys );
            FUNC3( p_sys->p_map );
        }
        goto error;
    }
    return VLC_SUCCESS;

error:
    if( p_sys->p_symbols )
        FUNC10( p_sys->p_symbols );
    FUNC7( p_sys->p_connection );
    FUNC3( p_sys );
    return ret;
}