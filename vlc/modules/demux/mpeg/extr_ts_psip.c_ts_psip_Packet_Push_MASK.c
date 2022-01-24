#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {TYPE_1__* p_psip; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_2__ u; } ;
typedef  TYPE_3__ ts_pid_t ;
struct TYPE_9__ {scalar_t__ p_decoder; } ;
struct TYPE_6__ {TYPE_5__* handle; } ;

/* Variables and functions */
 scalar_t__ TYPE_PSIP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 

void FUNC2( ts_pid_t *p_pid, const uint8_t *p_pktbuffer )
{
    if( p_pid->u.p_psip->handle->p_decoder && FUNC1(p_pid->type == TYPE_PSIP) )
        FUNC0( p_pid->u.p_psip->handle, (uint8_t *) p_pktbuffer );
}