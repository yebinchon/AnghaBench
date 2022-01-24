#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {TYPE_2__* p_pmt; TYPE_1__* p_pat; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_3__ u; } ;
typedef  TYPE_4__ ts_pid_t ;
struct TYPE_7__ {int /*<<< orphan*/  handle; } ;
struct TYPE_6__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 scalar_t__ TYPE_PAT ; 
 scalar_t__ TYPE_PMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC1( ts_pid_t *p_pid, const uint8_t *p_pktbuffer )
{
    if( p_pid->type == TYPE_PAT )
        FUNC0( p_pid->u.p_pat->handle, (uint8_t *) p_pktbuffer );
    else if( p_pid->type == TYPE_PMT )
        FUNC0( p_pid->u.p_pmt->handle, (uint8_t *) p_pktbuffer );
}