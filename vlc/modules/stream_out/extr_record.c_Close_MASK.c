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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_stream_t ;
struct TYPE_5__ {struct TYPE_5__* psz_prefix; int /*<<< orphan*/  id; int /*<<< orphan*/  i_id; scalar_t__ p_out; } ;
typedef  TYPE_2__ sout_stream_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3( vlc_object_t * p_this )
{
    sout_stream_t *p_stream = (sout_stream_t*)p_this;
    sout_stream_sys_t *p_sys = p_stream->p_sys;

    if( p_sys->p_out )
        FUNC2( p_sys->p_out, p_sys->p_out );

    FUNC0( p_sys->i_id, p_sys->id );
    FUNC1( p_sys->psz_prefix );
    FUNC1( p_sys );
}