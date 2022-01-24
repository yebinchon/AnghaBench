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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_9__ {int /*<<< orphan*/ ** pp_elems; } ;
struct TYPE_8__ {TYPE_3__ hds_streams; } ;
typedef  TYPE_2__ stream_sys_t ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  hds_stream_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,void*,size_t) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static ssize_t FUNC5( stream_t *s, void *buffer, size_t i_read )
{
    stream_sys_t *p_sys = s->p_sys;

    if ( FUNC4( &p_sys->hds_streams ) == 0 )
        return 0;
    if( FUNC3(i_read == 0) )
        return 0;

    // TODO: change here for selectable stream
    hds_stream_t *stream = p_sys->hds_streams.pp_elems[0];

    if ( FUNC0( p_sys ) )
        return FUNC2( stream, p_sys, buffer, i_read );

    return FUNC1( (vlc_object_t*)s, buffer, i_read, stream );
}