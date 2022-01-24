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
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_9__ {int scanning; double sampling_rate; int bytes_per_line; double offset; int* start; int* count; int /*<<< orphan*/  synchronous; int /*<<< orphan*/  interlaced; int /*<<< orphan*/  sampling_format; } ;
struct TYPE_8__ {int i_width; int /*<<< orphan*/  rd_telx; int /*<<< orphan*/  p_wss_buffer; TYPE_3__ rd_wss; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VBI_PIXFMT_UYVY ; 
 int /*<<< orphan*/  VBI_SLICED_WSS_625 ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC5( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    FUNC4( &p_sys->rd_wss );

    p_sys->rd_wss.scanning        = 625;
    p_sys->rd_wss.sampling_format = VBI_PIXFMT_UYVY;
    p_sys->rd_wss.sampling_rate   = 13.5e6;
    p_sys->rd_wss.bytes_per_line  = 720 * 2;
    p_sys->rd_wss.offset          = 9.5e-6 * 13.5e6;

    p_sys->rd_wss.start[0] = 23;
    p_sys->rd_wss.count[0] = 1;
    p_sys->rd_wss.start[1] = 0;
    p_sys->rd_wss.count[1] = 0;

    p_sys->rd_wss.interlaced = FALSE;
    p_sys->rd_wss.synchronous = TRUE;

    if ( FUNC2( &p_sys->rd_wss,
                                       VBI_SLICED_WSS_625,
                                       /* strict */ 2 ) == 0 )
    {
        FUNC1( p_demux, "cannot initialize zvbi for WSS" );
        FUNC3 ( &p_sys->rd_telx );
        return VLC_EGENERIC;
    }

    p_sys->p_wss_buffer = FUNC0( p_sys->i_width * 2 );
    if( !p_sys->p_wss_buffer )
    {
        FUNC3 ( &p_sys->rd_telx );
        return VLC_ENOMEM;
    }
    return VLC_SUCCESS;
}