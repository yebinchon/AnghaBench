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
typedef  TYPE_1__ stream_t ;
struct TYPE_8__ {int b_ts_format; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static bool FUNC3( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;

    /* find first part and determine directory format */
    p_sys->b_ts_format = true;
    if( !FUNC2( p_access ) )
    {
        p_sys->b_ts_format = !p_sys->b_ts_format;
        if( !FUNC2( p_access ) )
            return false;
    }

    /* get all remaining parts */
    while( FUNC2( p_access ) )
        continue;

    /* import meta data etc. */
    FUNC1( p_access );

    /* cut marks depend on meta data and file sizes */
    FUNC0( p_access );

    return true;
}