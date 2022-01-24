#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int vdev_state; char* vdev_path; size_t vdev_children; struct TYPE_4__** vdev_child; scalar_t__ vdev_guid; scalar_t__ vdev_islog; TYPE_2__* vdev_ops; scalar_t__ vdev_id; scalar_t__ vdev_ishole; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int uint_t ;
typedef  size_t uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  state ;
struct TYPE_5__ {int /*<<< orphan*/  vdev_op_type; } ;

/* Variables and functions */
#define  VDEV_STATE_CANT_OPEN 135 
#define  VDEV_STATE_CLOSED 134 
#define  VDEV_STATE_DEGRADED 133 
#define  VDEV_STATE_FAULTED 132 
#define  VDEV_STATE_HEALTHY 131 
#define  VDEV_STATE_OFFLINE 130 
#define  VDEV_STATE_REMOVED 129 
#define  VDEV_STATE_UNKNOWN 128 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,...) ; 
 TYPE_2__ vdev_missing_ops ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int,int /*<<< orphan*/ ,...) ; 

void
FUNC2(vdev_t *vd, int indent)
{
	char state[20];

	if (vd->vdev_ishole || vd->vdev_ops == &vdev_missing_ops) {
		FUNC1("%*svdev %u: %s", indent, "", vd->vdev_id,
		    vd->vdev_ops->vdev_op_type);
		return;
	}

	switch (vd->vdev_state) {
	case VDEV_STATE_UNKNOWN:
		(void) FUNC0(state, sizeof (state), "unknown");
		break;
	case VDEV_STATE_CLOSED:
		(void) FUNC0(state, sizeof (state), "closed");
		break;
	case VDEV_STATE_OFFLINE:
		(void) FUNC0(state, sizeof (state), "offline");
		break;
	case VDEV_STATE_REMOVED:
		(void) FUNC0(state, sizeof (state), "removed");
		break;
	case VDEV_STATE_CANT_OPEN:
		(void) FUNC0(state, sizeof (state), "can't open");
		break;
	case VDEV_STATE_FAULTED:
		(void) FUNC0(state, sizeof (state), "faulted");
		break;
	case VDEV_STATE_DEGRADED:
		(void) FUNC0(state, sizeof (state), "degraded");
		break;
	case VDEV_STATE_HEALTHY:
		(void) FUNC0(state, sizeof (state), "healthy");
		break;
	default:
		(void) FUNC0(state, sizeof (state), "<state %u>",
		    (uint_t)vd->vdev_state);
	}

	FUNC1("%*svdev %u: %s%s, guid: %llu, path: %s, %s", indent,
	    "", (int)vd->vdev_id, vd->vdev_ops->vdev_op_type,
	    vd->vdev_islog ? " (log)" : "",
	    (u_longlong_t)vd->vdev_guid,
	    vd->vdev_path ? vd->vdev_path : "N/A", state);

	for (uint64_t i = 0; i < vd->vdev_children; i++)
		FUNC2(vd->vdev_child[i], indent + 2);
}