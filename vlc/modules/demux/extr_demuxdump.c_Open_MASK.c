#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  sout_access_out_t ;
struct TYPE_9__ {int /*<<< orphan*/  force; } ;
struct TYPE_10__ {int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_demux; void* p_sys; TYPE_1__ obj; } ;
typedef  TYPE_2__ demux_t ;

/* Variables and functions */
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  Demux ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_VAR_BOOL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,char*) ; 
 char* FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int) ; 

__attribute__((used)) static int FUNC7( vlc_object_t * p_this )
{
    demux_t *p_demux = (demux_t*)p_this;

    /* Accept only if forced */
    if( !p_demux->obj.force )
        return VLC_EGENERIC;

    char *access = FUNC5( p_demux, "demuxdump-access" );
    if( access == NULL )
        return VLC_EGENERIC;

    /* --sout-file-append (defaults to false) */
    FUNC3( p_demux, "sout-file-append", VLC_VAR_BOOL );
    if( FUNC4( p_demux, "demuxdump-append" ) )
        FUNC6( p_demux, "sout-file-append", true );
    /* --sout-file-format (always false) */
    FUNC3( p_demux, "sout-file-format", VLC_VAR_BOOL );

    char *path = FUNC5( p_demux, "demuxdump-file" );
    if( path == NULL )
    {
        FUNC0( access );
        FUNC1( p_demux, "no dump file name given" );
        return VLC_EGENERIC;
    }

    sout_access_out_t *out = FUNC2( p_demux, access, path );
    FUNC0( path );
    FUNC0( access );
    if( out == NULL )
    {
        FUNC1( p_demux, "cannot create output" );
        return VLC_EGENERIC;
    }

    p_demux->p_sys = (void *)out;
    p_demux->pf_demux = Demux;
    p_demux->pf_control = Control;
    return VLC_SUCCESS;
}