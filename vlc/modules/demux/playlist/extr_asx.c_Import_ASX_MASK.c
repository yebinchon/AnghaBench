#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_6__ {int /*<<< orphan*/  pf_readdir; int /*<<< orphan*/  pf_control; int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  ReadDir ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  access_vaDirectoryControlHelper ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7( vlc_object_t *p_this )
{
    stream_t *p_demux = (stream_t *)p_this;

    FUNC0(p_demux);

    char *type = FUNC6( p_demux->s );

    if( FUNC5( p_demux, ".asx" )
     || FUNC5( p_demux, ".wax" )
     || FUNC5( p_demux, ".wvx" )
     || (type != NULL && (FUNC4(type, "video/x-ms-asf") == 0
                       || FUNC4(type, "audio/x-ms-wax") == 0)
                      && FUNC1( p_demux ) ) )
    {
        FUNC3( p_demux, "found valid ASX playlist" );
        FUNC2(type);
    }
    else
    {
        FUNC2(type);
        return VLC_EGENERIC;
    }

    p_demux->pf_control = access_vaDirectoryControlHelper;
    p_demux->pf_readdir = ReadDir;
    return VLC_SUCCESS;
}