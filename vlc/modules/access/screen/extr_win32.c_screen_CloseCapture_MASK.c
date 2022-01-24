#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  hdc_src; int /*<<< orphan*/  hdc_dst; scalar_t__ hgdi_backup; scalar_t__ p_block; } ;
typedef  TYPE_1__ screen_data_t ;
struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_8__ {TYPE_1__* p_data; } ;
typedef  TYPE_3__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int FUNC5( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    screen_data_t *p_data = p_sys->p_data;

    if( p_data->p_block ) FUNC3( p_data->p_block );

    if( p_data->hgdi_backup)
        FUNC2( p_data->hdc_dst, p_data->hgdi_backup );

    FUNC0( p_data->hdc_dst );
    FUNC1( 0, p_data->hdc_src );
    FUNC4( p_data );

    return VLC_SUCCESS;
}