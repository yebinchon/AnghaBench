#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_3__ {int b_seekable_archive; int b_seekable_source; size_t i_callback_data; int /*<<< orphan*/  p_archive; int /*<<< orphan*/  p_obj; int /*<<< orphan*/ * pp_callback_data; } ;
typedef  TYPE_1__ private_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  STREAM_CAN_SEEK ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  libarchive_exit_cb ; 
 int /*<<< orphan*/  libarchive_jump_cb ; 
 int /*<<< orphan*/  libarchive_read_cb ; 
 int /*<<< orphan*/  libarchive_seek_cb ; 
 int /*<<< orphan*/  libarchive_skip_cb ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC13( private_sys_t* p_sys, stream_t* source )
{
    /* CREATE ARCHIVE HANDLE */

    p_sys->p_archive = FUNC2();

    if( FUNC11( !p_sys->p_archive ) )
    {
        FUNC8( p_sys->p_obj, "unable to create libarchive handle" );
        return VLC_EGENERIC;
    }

    /* SETUP SEEKING */

    p_sys->b_seekable_archive = false;

    if( FUNC12( source, STREAM_CAN_SEEK,
        &p_sys->b_seekable_source ) )
    {
        FUNC10( p_sys->p_obj, "unable to query whether source stream can seek" );
        p_sys->b_seekable_source = false;
    }

    if( p_sys->b_seekable_source )
    {
        if( FUNC4( p_sys->p_archive,
            libarchive_seek_cb ) )
        {
            FUNC9( p_sys->p_obj, "archive_read_set_callback failed, aborting." );
            return VLC_EGENERIC;
        }
    }

    /* ENABLE ALL FORMATS/FILTERS */

    FUNC6( p_sys->p_archive );
    FUNC7( p_sys->p_archive );

    /* REGISTER CALLBACK DATA */

    if( FUNC5( p_sys->p_archive,
        libarchive_jump_cb ) )
    {
        FUNC9( p_sys->p_obj, "archive_read_set_switch_callback failed, aborting." );
        return VLC_EGENERIC;
    }

    for( size_t i = 0; i < p_sys->i_callback_data; ++i )
    {
        if( FUNC1( p_sys->p_archive,
            p_sys->pp_callback_data[i] ) )
        {
            return VLC_EGENERIC;
        }
    }

    /* OPEN THE ARCHIVE */

    if( FUNC3( p_sys->p_archive, p_sys->pp_callback_data[0], NULL,
        libarchive_read_cb, libarchive_skip_cb, libarchive_exit_cb ) )
    {
        FUNC8( p_sys->p_obj, "libarchive: %s",
          FUNC0( p_sys->p_archive ) );

        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}