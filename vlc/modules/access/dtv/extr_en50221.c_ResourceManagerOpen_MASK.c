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
struct TYPE_6__ {TYPE_1__* p_sessions; int /*<<< orphan*/  obj; } ;
typedef  TYPE_2__ cam_t ;
struct TYPE_5__ {int /*<<< orphan*/  pf_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  AOT_PROFILE_ENQ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ResourceManagerHandle ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 

__attribute__((used)) static void FUNC2( cam_t * p_cam, unsigned i_session_id )
{
    FUNC1( p_cam->obj, "opening ResourceManager session (%u)",
             i_session_id );
    p_cam->p_sessions[i_session_id - 1].pf_handle = ResourceManagerHandle;
    FUNC0( p_cam, i_session_id, AOT_PROFILE_ENQ, NULL, 0 );
}