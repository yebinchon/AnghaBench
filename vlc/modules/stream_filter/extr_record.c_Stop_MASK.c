#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_6__ {int /*<<< orphan*/ * f; } ;
typedef  TYPE_2__ stream_sys_t ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC3( stream_t *s )
{
    stream_sys_t *p_sys = s->p_sys;

    FUNC0( p_sys->f );

    FUNC2( s, "Recording completed" );
    FUNC1( p_sys->f );
    p_sys->f = NULL;
    return VLC_SUCCESS;
}