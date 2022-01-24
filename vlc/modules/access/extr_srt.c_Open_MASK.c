#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  i_port; int /*<<< orphan*/  psz_host; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ vlc_url_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_10__ {int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_block; int /*<<< orphan*/  psz_url; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ stream_t ;
struct TYPE_11__ {int i_poll_id; int sock; int /*<<< orphan*/  lock; int /*<<< orphan*/  i_port; int /*<<< orphan*/  psz_host; } ;
typedef  TYPE_3__ stream_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  BlockSRT ; 
 int /*<<< orphan*/  Control ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(vlc_object_t *p_this)
{
    stream_t     *p_stream = (stream_t*)p_this;
    stream_sys_t *p_sys = NULL;
    vlc_url_t     parsed_url = { 0 };

    p_sys = FUNC11( p_this, 1, sizeof( *p_sys ) );
    if( FUNC6( p_sys == NULL ) )
        return VLC_ENOMEM;

    FUNC5();

    FUNC10( &p_sys->lock );

    p_stream->p_sys = p_sys;

    if ( FUNC8( &parsed_url, p_stream->psz_url ) == -1 )
    {
        FUNC0( p_stream, "Failed to parse input URL (%s)",
            p_stream->psz_url );
        goto failed;
    }

    p_sys->psz_host = FUNC12( p_this, parsed_url.psz_host );
    p_sys->i_port = parsed_url.i_port;

    FUNC7( &parsed_url );

    p_sys->i_poll_id = FUNC2();
    if ( p_sys->i_poll_id == -1 )
    {
        FUNC0( p_stream, "Failed to create poll id for SRT socket." );
        goto failed;
    }

    if ( !FUNC4( p_stream ) )
    {
        FUNC0( p_stream, "Failed to schedule connect");

        goto failed;
    }

    p_stream->pf_block = BlockSRT;
    p_stream->pf_control = Control;

    return VLC_SUCCESS;

failed:
    FUNC9( &p_sys->lock );

    if ( p_sys->sock != -1 ) FUNC1( p_sys->sock );
    if ( p_sys->i_poll_id != -1 ) FUNC3( p_sys->i_poll_id );

    return VLC_EGENERIC;
}