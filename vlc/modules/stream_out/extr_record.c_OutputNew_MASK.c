#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  p_sout; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_stream_t ;
struct TYPE_8__ {int i_id; int /*<<< orphan*/  p_out; TYPE_3__** id; } ;
typedef  TYPE_2__ sout_stream_sys_t ;
struct TYPE_9__ {int /*<<< orphan*/  id; int /*<<< orphan*/  fmt; } ;
typedef  TYPE_3__ sout_stream_id_sys_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,char*,char const*,char*,...) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8( sout_stream_t *p_stream,
                      const char *psz_muxer, const char *psz_prefix, const char *psz_extension  )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    char *psz_file = NULL, *psz_tmp = NULL;
    char *psz_output = NULL;
    int i_count;

    if( FUNC0( &psz_tmp, "%s%s%s",
                  psz_prefix, psz_extension ? "." : "", psz_extension ? psz_extension : "" ) < 0 )
    {
        goto error;
    }

    psz_file = FUNC1( psz_tmp );
    if( !psz_file )
    {
        FUNC2( psz_tmp );
        goto error;
    }
    FUNC2( psz_tmp );

    if( FUNC0( &psz_output,
                  "std{access=file{no-append,no-format,no-overwrite},"
                  "mux=%s,dst='%s'}", psz_muxer, psz_file ) < 0 )
    {
        psz_output = NULL;
        goto error;
    }

    /* Create the output */
    FUNC3( p_stream, "Using record output `%s'", psz_output );

    p_sys->p_out = FUNC4( p_stream->p_sout, psz_output, NULL, NULL );

    if( !p_sys->p_out )
        goto error;

    /* Add es */
    i_count = 0;
    for( int i = 0; i < p_sys->i_id; i++ )
    {
        sout_stream_id_sys_t *id = p_sys->id[i];

        id->id = FUNC5( p_sys->p_out, &id->fmt );
        if( id->id )
            i_count++;
    }

    if( psz_file && psz_extension )
        FUNC6( FUNC7(p_stream), "record-file", psz_file );

    FUNC2( psz_file );
    FUNC2( psz_output );

    return i_count;

error:

    FUNC2( psz_file );
    FUNC2( psz_output );
    return -1;

}