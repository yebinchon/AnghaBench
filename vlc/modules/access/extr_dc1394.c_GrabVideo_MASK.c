#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_12__ {int width; int height; TYPE_5__* frame; int /*<<< orphan*/  camera; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_13__ {int /*<<< orphan*/  i_dts; int /*<<< orphan*/  i_pts; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_3__ block_t ;
struct TYPE_14__ {int* size; scalar_t__ image; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC1394_CAPTURE_POLICY_WAIT ; 
 scalar_t__ DC1394_SUCCESS ; 
 TYPE_3__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static block_t *FUNC7( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    block_t     *p_block = NULL;

    if( FUNC2( p_sys->camera,
                DC1394_CAPTURE_POLICY_WAIT,
                &p_sys->frame ) != DC1394_SUCCESS )
    {
        FUNC5( p_demux, "Unable to capture a frame" );
        return NULL;
    }

    p_block = FUNC0( p_sys->frame->size[0] * p_sys->frame->size[1] * 2 );
    if( !p_block )
    {
        FUNC5( p_demux, "Can not get block" );
        return NULL;
    }

    if( !p_sys->frame->image )
    {
        FUNC5 (p_demux, "Capture buffer empty");
        FUNC1( p_block );
        return NULL;
    }

    FUNC4( p_block->p_buffer, (const char *)p_sys->frame->image,
            p_sys->width * p_sys->height * 2 );

    p_block->i_pts = p_block->i_dts = FUNC6();
    FUNC3( p_sys->camera, p_sys->frame );
    return p_block;
}