#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ sout_stream_t ;
struct TYPE_7__ {scalar_t__ i_stream_start; TYPE_1__* data; } ;
typedef  TYPE_3__ sout_stream_sys_t ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_5__ {int /*<<< orphan*/  sem; } ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static int FUNC5( sout_stream_t *p_stream, void *id, block_t *p_buffer )
{
    FUNC1(id);
    sout_stream_sys_t *p_sys = p_stream->p_sys;

    FUNC2( p_buffer );

    if( p_sys->i_stream_start + FUNC0(1500) < FUNC4() )
        FUNC3(p_sys->data->sem);

    return VLC_SUCCESS;
}