#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_11__ {TYPE_2__* p_sys; int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_send; int /*<<< orphan*/  pf_del; int /*<<< orphan*/  pf_add; int /*<<< orphan*/  p_next; int /*<<< orphan*/  p_sout; TYPE_3__* p_cfg; } ;
typedef  TYPE_1__ sout_stream_t ;
struct TYPE_12__ {int i_nb_streams; char** pp_streams; int i_nb_last_streams; char** pp_last_streams; int i_nb_select; char** ppsz_select; } ;
typedef  TYPE_2__ sout_stream_sys_t ;
struct TYPE_13__ {char* psz_value; int /*<<< orphan*/  psz_name; struct TYPE_13__* p_next; } ;
typedef  TYPE_3__ config_chain_t ;

/* Variables and functions */
 int /*<<< orphan*/  Add ; 
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  Del ; 
 int /*<<< orphan*/  Send ; 
 int /*<<< orphan*/  FUNC0 (int,char**,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char**) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,...) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__**) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10( vlc_object_t *p_this )
{
    sout_stream_t     *p_stream = (sout_stream_t*)p_this;
    sout_stream_sys_t *p_sys;
    config_chain_t        *p_cfg;

    FUNC4( p_stream, "creating 'duplicate'" );

    p_sys = FUNC3( sizeof( sout_stream_sys_t ) );
    if( !p_sys )
        return VLC_ENOMEM;

    FUNC1( p_sys->i_nb_streams, p_sys->pp_streams );
    FUNC1( p_sys->i_nb_last_streams, p_sys->pp_last_streams );
    FUNC1( p_sys->i_nb_select, p_sys->ppsz_select );

    for( p_cfg = p_stream->p_cfg; p_cfg != NULL; p_cfg = p_cfg->p_next )
    {
        if( !FUNC9( p_cfg->psz_name, "dst", FUNC8( "dst" ) ) )
        {
            sout_stream_t *s, *p_last;

            FUNC4( p_stream, " * adding `%s'", p_cfg->psz_value );
            s = FUNC6( p_stream->p_sout, p_cfg->psz_value,
                p_stream->p_next, &p_last );

            if( s )
            {
                FUNC0( p_sys->i_nb_streams, p_sys->pp_streams, s );
                FUNC0( p_sys->i_nb_last_streams, p_sys->pp_last_streams,
                    p_last );
                FUNC0( p_sys->i_nb_select,  p_sys->ppsz_select, NULL );
            }
        }
        else if( !FUNC9( p_cfg->psz_name, "select", FUNC8( "select" ) ) )
        {
            char *psz = p_cfg->psz_value;
            if( p_sys->i_nb_select > 0 && psz && *psz )
            {
                char **ppsz_select = &p_sys->ppsz_select[p_sys->i_nb_select - 1];

                if( *ppsz_select )
                {
                    FUNC5( p_stream, " * ignore selection `%s' (it already has `%s')",
                             psz, *ppsz_select );
                }
                else
                {
                    FUNC4( p_stream, " * apply selection `%s'", psz );
                    *ppsz_select = FUNC7( psz );
                }
            }
        }
        else
        {
            FUNC5( p_stream, " * ignore unknown option `%s'", p_cfg->psz_name );
        }
    }

    if( p_sys->i_nb_streams == 0 )
    {
        FUNC5( p_stream, "no destination given" );
        FUNC2( p_sys );

        return VLC_EGENERIC;
    }

    p_stream->pf_add    = Add;
    p_stream->pf_del    = Del;
    p_stream->pf_send   = Send;
    p_stream->pf_control = Control;

    p_stream->p_sys     = p_sys;

    return VLC_SUCCESS;
}