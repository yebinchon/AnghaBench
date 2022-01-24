#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ogg_page ;
struct TYPE_4__ {int /*<<< orphan*/  s; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_5__ {int /*<<< orphan*/  oy; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  OGGSEEK_BYTES_TO_READ ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4( demux_t *p_demux, ogg_page *p_oggpage )
{
    demux_sys_t *p_ogg = p_demux->p_sys  ;
    int i_read = 0;
    char *p_buffer;

    while( FUNC1( &p_ogg->oy, p_oggpage ) != 1 )
    {
        p_buffer = FUNC0( &p_ogg->oy, OGGSEEK_BYTES_TO_READ );

        i_read = FUNC3( p_demux->s, p_buffer, OGGSEEK_BYTES_TO_READ );
        if( i_read <= 0 )
            return VLC_EGENERIC;

        FUNC2( &p_ogg->oy, i_read );
    }

    return VLC_SUCCESS;
}