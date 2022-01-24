#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cevent_handler ;
struct TYPE_8__ {int /*<<< orphan*/  ev_mgr; } ;
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  cevent_id; } ;
typedef  TYPE_2__ SeafBranchManager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*) ; 
 scalar_t__ publish_repo_update_event ; 
 TYPE_4__* seaf ; 

int
FUNC2 (SeafBranchManager *mgr)
{
#if defined( SEAFILE_SERVER ) && defined( FULL_FEATURE )
    mgr->priv->cevent_id = cevent_manager_register (seaf->ev_mgr,
                                    (cevent_handler)publish_repo_update_event,
                                                    NULL);
#endif    

    return FUNC1 (mgr);
}