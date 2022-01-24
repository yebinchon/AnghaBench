#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  p_input_item; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_8__ {int b_error; int /*<<< orphan*/ * f; } ;
typedef  TYPE_2__ stream_sys_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  INPUT_RECORD_PREFIX ; 
 int /*<<< orphan*/  VLC_DOWNLOAD_DIR ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char*) ; 
 char* FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8( stream_t *s, const char *psz_extension )
{
    stream_sys_t *p_sys = s->p_sys;

    char *psz_file;
    FILE *f;

    /* */
    if( !psz_extension )
        psz_extension = "dat";

    /* Retreive path */
    char *psz_path = FUNC4( s, "input-record-path" );
    if( !psz_path )
        psz_path = FUNC0( VLC_DOWNLOAD_DIR );

    if( !psz_path )
        return VLC_ENOMEM;

    /* Create file name
     * TODO allow prefix configuration */
    psz_file = FUNC2( s->p_input_item, psz_path,
                                          INPUT_RECORD_PREFIX, psz_extension );

    FUNC1( psz_path );

    if( !psz_file )
        return VLC_ENOMEM;

    f = FUNC6( psz_file, "wb" );
    if( !f )
    {
        FUNC1( psz_file );
        return VLC_EGENERIC;
    }

    /* signal new record file */
    FUNC5( FUNC7(s), "record-file", psz_file );

    FUNC3( s, "Recording into %s", psz_file );
    FUNC1( psz_file );

    /* */
    p_sys->f = f;
    p_sys->b_error = false;
    return VLC_SUCCESS;
}