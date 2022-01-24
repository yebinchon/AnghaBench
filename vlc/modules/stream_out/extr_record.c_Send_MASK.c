#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_stream_t ;
struct TYPE_8__ {scalar_t__ i_date_start; scalar_t__ i_max_wait; scalar_t__ i_size; scalar_t__ i_max_size; int /*<<< orphan*/  p_out; } ;
typedef  TYPE_2__ sout_stream_sys_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int VLC_SUCCESS ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int,int) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static int FUNC5( sout_stream_t *p_stream, void *id, block_t *p_buffer )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;

    if( p_sys->i_date_start == VLC_TICK_INVALID )
        p_sys->i_date_start = FUNC4();
    if( !p_sys->p_out &&
        ( FUNC4() - p_sys->i_date_start > p_sys->i_max_wait ||
          p_sys->i_size > p_sys->i_max_size ) )
    {
        FUNC3( p_stream, "Starting recording, waited %ds and %dbyte",
                 (int)FUNC2(FUNC4() - p_sys->i_date_start), (int)p_sys->i_size );
        FUNC1( p_stream );
    }

    FUNC0( p_stream, id, p_buffer );

    return VLC_SUCCESS;
}