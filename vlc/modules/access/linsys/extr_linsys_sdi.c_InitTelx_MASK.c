#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_10__ {int scanning; double sampling_rate; int bytes_per_line; double offset; int* count; int /*<<< orphan*/  synchronous; int /*<<< orphan*/  interlaced; scalar_t__* start; int /*<<< orphan*/  sampling_format; } ;
struct TYPE_9__ {int i_telx_count; int i_width; TYPE_3__ rd_telx; int /*<<< orphan*/  p_telx_buffer; scalar_t__ i_telx_line; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VBI_PIXFMT_UYVY ; 
 int /*<<< orphan*/  VBI_SLICED_TELETEXT_B ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    FUNC3( &p_sys->rd_telx );

    p_sys->rd_telx.scanning        = 625;
    p_sys->rd_telx.sampling_format = VBI_PIXFMT_UYVY;
    p_sys->rd_telx.sampling_rate   = 13.5e6;
    p_sys->rd_telx.bytes_per_line  = 720 * 2;
    p_sys->rd_telx.offset          = 9.5e-6 * 13.5e6;

    p_sys->rd_telx.start[0] = p_sys->i_telx_line + 1;
    p_sys->rd_telx.count[0] = p_sys->i_telx_count;
    p_sys->rd_telx.start[1] = p_sys->i_telx_line + 1 + 313;
    p_sys->rd_telx.count[1] = p_sys->i_telx_count;

    p_sys->rd_telx.interlaced = FALSE;
    p_sys->rd_telx.synchronous = TRUE;

    if ( FUNC1( &p_sys->rd_telx, VBI_SLICED_TELETEXT_B,
                                       0 ) == 0 )
    {
        FUNC0( p_demux, "cannot initialize zvbi for Teletext" );
        FUNC2 ( &p_sys->rd_telx );
        return VLC_EGENERIC;
    }

    p_sys->p_telx_buffer = FUNC4( p_sys->i_telx_count * p_sys->i_width, 4 );
    if( !p_sys->p_telx_buffer )
    {
        FUNC2 ( &p_sys->rd_telx );
        return VLC_ENOMEM;
    }
    return VLC_SUCCESS;
}