#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_14__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ sout_mux_t ;
struct TYPE_13__ {int i_entry_count; TYPE_1__* entry; } ;
struct TYPE_15__ {TYPE_2__ idx1; } ;
typedef  TYPE_4__ sout_mux_sys_t ;
struct TYPE_16__ {TYPE_6__* b; } ;
typedef  TYPE_5__ bo_t ;
struct TYPE_17__ {int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_6__ block_t ;
struct TYPE_12__ {char* fcc; int i_flags; int i_pos; int i_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static block_t * FUNC4( sout_mux_t *p_mux )
{
    sout_mux_sys_t      *p_sys = p_mux->p_sys;
    uint32_t            i_idx1_size;
    bo_t                bo;

    i_idx1_size = 16 * p_sys->idx1.i_entry_count + 8;

    if (!i_idx1_size || !FUNC2( &bo, i_idx1_size ) )
        return NULL;
    FUNC3( bo.b->p_buffer, 0, i_idx1_size);

    FUNC1( &bo, "idx1" );
    FUNC0( &bo, i_idx1_size - 8);

    for( unsigned i = 0; i < p_sys->idx1.i_entry_count; i++ )
    {
        FUNC1( &bo, p_sys->idx1.entry[i].fcc );
        FUNC0( &bo, p_sys->idx1.entry[i].i_flags );
        FUNC0( &bo, p_sys->idx1.entry[i].i_pos );
        FUNC0( &bo, p_sys->idx1.entry[i].i_length );
    }

    return( bo.b );
}