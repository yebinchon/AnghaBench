#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_9__ {int b_wants_substreams; int /*<<< orphan*/  lock; void* psz_sout; int /*<<< orphan*/ * p_stream; scalar_t__ i_out_pace_nocontrol; } ;
typedef  TYPE_1__ sout_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  SOUT_STREAM_WANTS_SUBSTREAMS ; 
 int VLC_VAR_DOINHERIT ; 
 int VLC_VAR_INTEGER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 void* FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

sout_instance_t *FUNC15( vlc_object_t *p_parent, const char *psz_dest )
{
    sout_instance_t *p_sout;
    char *psz_chain;

    FUNC1( psz_dest != NULL );

    if( psz_dest[0] == '#' )
    {
        psz_chain = FUNC8( &psz_dest[1] );
    }
    else
    {
        psz_chain = FUNC7(
            FUNC10(p_parent, "sout-display"), psz_dest );
    }
    if(!psz_chain)
        return NULL;

    /* *** Allocate descriptor *** */
    p_sout = FUNC11( p_parent, sizeof( *p_sout ), "stream output" );
    if( p_sout == NULL )
    {
        FUNC2( psz_chain );
        return NULL;
    }

    FUNC3( p_sout, "using sout chain=`%s'", psz_chain );

    /* *** init descriptor *** */
    p_sout->psz_sout    = FUNC8( psz_dest );
    p_sout->i_out_pace_nocontrol = 0;
    p_sout->b_wants_substreams = false;

    FUNC13( &p_sout->lock );
    p_sout->p_stream = NULL;

    FUNC9( p_sout, "sout-mux-caching", VLC_VAR_INTEGER | VLC_VAR_DOINHERIT );

    p_sout->p_stream = FUNC5( p_sout, psz_chain, NULL, NULL );
    if( p_sout->p_stream )
    {
        FUNC2( psz_chain );
        FUNC6( p_sout->p_stream,
                            SOUT_STREAM_WANTS_SUBSTREAMS,
                            &p_sout->b_wants_substreams );
        return p_sout;
    }

    FUNC4( p_sout, "stream chain failed for `%s'", psz_chain );
    FUNC2( psz_chain );

    FUNC0( p_sout->psz_sout );

    FUNC12( &p_sout->lock );
    FUNC14(p_sout);
    return NULL;
}