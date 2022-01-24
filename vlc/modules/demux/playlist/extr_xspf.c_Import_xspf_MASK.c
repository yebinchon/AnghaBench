#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xspf_sys_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_readdir; int /*<<< orphan*/ * p_sys; int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ReadDir ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  access_vaDirectoryControlHelper ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(vlc_object_t *p_this)
{
    stream_t *p_stream = (stream_t *)p_this;

    FUNC0(p_stream);

    if( !FUNC3( p_stream, ".xspf" )
     && !FUNC4( p_stream->s, "application/xspf+xml" ) )
        return VLC_EGENERIC;

    xspf_sys_t *sys = FUNC1(1, sizeof (*sys));
    if (FUNC5(sys == NULL))
        return VLC_ENOMEM;

    FUNC2(p_stream, "using XSPF playlist reader");
    p_stream->p_sys = sys;
    p_stream->pf_readdir = ReadDir;
    p_stream->pf_control = access_vaDirectoryControlHelper;

    return VLC_SUCCESS;
}