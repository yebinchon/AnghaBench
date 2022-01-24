#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  s; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_6__ {int /*<<< orphan*/ * p_root; } ;
typedef  TYPE_2__ demux_sys_t ;
typedef  int /*<<< orphan*/  MP4_Box_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC4( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    /* Load all boxes ( except raw data ) */
    MP4_Box_t *p_root = FUNC2( p_demux->s );
    if( p_root == NULL || !FUNC1( p_root, "/moov" ) )
    {
        FUNC0( p_root );
        goto LoadInitFragError;
    }

    p_sys->p_root = p_root;

    return VLC_SUCCESS;

LoadInitFragError:
    FUNC3( p_demux, "MP4 plugin discarded (not a valid initialization chunk)" );
    return VLC_EGENERIC;
}