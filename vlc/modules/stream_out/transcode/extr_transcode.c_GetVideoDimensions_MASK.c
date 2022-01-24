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
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_stream_t ;
struct TYPE_5__ {int /*<<< orphan*/  lock; scalar_t__ id_video; } ;
typedef  TYPE_2__ sout_stream_sys_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int FUNC0 (TYPE_1__*,scalar_t__,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3( void *cbdata, unsigned *w, unsigned *h )
{
    sout_stream_t *p_stream = cbdata;
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    int i_ret = VLC_EGENERIC;
    FUNC1( &p_sys->lock );
    if( p_sys->id_video )
        i_ret = FUNC0( p_stream,
                                                       p_sys->id_video, w, h );
    FUNC2( &p_sys->lock );
    return i_ret;
}