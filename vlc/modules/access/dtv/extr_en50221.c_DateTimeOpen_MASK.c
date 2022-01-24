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
typedef  int /*<<< orphan*/  date_time_t ;
struct TYPE_6__ {TYPE_1__* p_sessions; int /*<<< orphan*/  obj; } ;
typedef  TYPE_2__ cam_t ;
struct TYPE_5__ {int /*<<< orphan*/  p_sys; int /*<<< orphan*/  pf_close; int /*<<< orphan*/  pf_manage; int /*<<< orphan*/  pf_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  DateTimeClose ; 
 int /*<<< orphan*/  DateTimeHandle ; 
 int /*<<< orphan*/  DateTimeManage ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 

__attribute__((used)) static void FUNC3( cam_t * p_cam, unsigned i_session_id )
{
    FUNC2( p_cam->obj, "opening DateTime session (%u)", i_session_id );

    p_cam->p_sessions[i_session_id - 1].pf_handle = DateTimeHandle;
    p_cam->p_sessions[i_session_id - 1].pf_manage = DateTimeManage;
    p_cam->p_sessions[i_session_id - 1].pf_close = DateTimeClose;
    p_cam->p_sessions[i_session_id - 1].p_sys = FUNC1( 1, sizeof(date_time_t) );

    FUNC0( p_cam, i_session_id );
}