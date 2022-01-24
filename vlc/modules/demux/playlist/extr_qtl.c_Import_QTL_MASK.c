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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_readdir; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ReadDir ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  access_vaDirectoryControlHelper ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 

int FUNC3( vlc_object_t *p_this )
{
    stream_t *p_demux = (stream_t *)p_this;

    FUNC0(p_demux);
    if( !FUNC2( p_demux, ".qtl" ) )
        return VLC_EGENERIC;

    p_demux->pf_readdir = ReadDir;
    p_demux->pf_control = access_vaDirectoryControlHelper;
    FUNC1( p_demux, "using QuickTime Media Link reader" );

    return VLC_SUCCESS;
}