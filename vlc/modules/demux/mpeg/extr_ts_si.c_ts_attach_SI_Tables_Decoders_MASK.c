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
struct TYPE_7__ {TYPE_1__* p_si; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_2__ u; } ;
typedef  TYPE_3__ ts_pid_t ;
struct TYPE_6__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  SINewTableCallBack ; 
 scalar_t__ TYPE_SI ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

bool FUNC2( ts_pid_t *p_pid )
{
    if( p_pid->type != TYPE_SI )
        return false;

    if( FUNC1( p_pid->u.p_si->handle ) )
        return true;

    return FUNC0( p_pid->u.p_si->handle, SINewTableCallBack, p_pid );
}