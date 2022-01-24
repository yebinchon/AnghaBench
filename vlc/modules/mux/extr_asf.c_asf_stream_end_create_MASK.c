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
typedef  TYPE_1__ sout_mux_t ;
struct TYPE_8__ {int /*<<< orphan*/  fid; int /*<<< orphan*/  i_seq; scalar_t__ b_asf_http; } ;
typedef  TYPE_2__ sout_mux_sys_t ;
typedef  int /*<<< orphan*/  bo_t ;
struct TYPE_9__ {int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  asf_object_index_guid ; 
 TYPE_3__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static block_t *FUNC6( sout_mux_t *p_mux )
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;

    block_t *out = NULL;
    bo_t bo;

    if( p_sys->b_asf_http )
    {
        out = FUNC1( 12 );
        FUNC5( &bo, out->p_buffer, 12 );
        FUNC0( &bo, 0x4524, 0, 0x00, p_sys->i_seq++ );
    }
    else
    {
        /* Create index */
        out = FUNC1( 56 );
        FUNC5( &bo, out->p_buffer, 56 );
        FUNC2 ( &bo, &asf_object_index_guid );
        FUNC4( &bo, 56 );
        FUNC2 ( &bo, &p_sys->fid );
        FUNC4( &bo, 10000000 );
        FUNC3( &bo, 5 );
        FUNC3( &bo, 0 );
    }

    return out;
}