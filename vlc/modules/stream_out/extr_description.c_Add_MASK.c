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
struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ sout_stream_t ;
struct TYPE_8__ {scalar_t__ i_stream_start; TYPE_1__* data; } ;
typedef  TYPE_3__ sout_stream_sys_t ;
typedef  int /*<<< orphan*/  es_format_t ;
struct TYPE_6__ {int /*<<< orphan*/  es; int /*<<< orphan*/  i_es; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static void *FUNC6( sout_stream_t *p_stream, const es_format_t *p_fmt )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    es_format_t *p_fmt_copy = FUNC2( sizeof( *p_fmt_copy ) );

    if( FUNC4(p_fmt_copy == NULL ) )
        return NULL;

    FUNC3( p_stream, "Adding a stream" );
    FUNC1( p_fmt_copy, p_fmt );

    FUNC0( p_sys->data->i_es, p_sys->data->es, p_fmt_copy );

    if( p_sys->i_stream_start == VLC_TICK_INVALID )
        p_sys->i_stream_start = FUNC5();

    return (void *)p_fmt_copy;
}