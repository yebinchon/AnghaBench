#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct sway_container {struct sway_container* parent; } ;
struct TYPE_3__ {int length; } ;
typedef  TYPE_1__ list_t ;
typedef  enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;

/* Variables and functions */
 int L_HORIZ ; 
 int L_VERT ; 
 scalar_t__ WLR_EDGE_BOTTOM ; 
 scalar_t__ WLR_EDGE_LEFT ; 
 scalar_t__ WLR_EDGE_RIGHT ; 
 scalar_t__ WLR_EDGE_TOP ; 
 TYPE_1__* FUNC0 (struct sway_container*) ; 
 int FUNC1 (struct sway_container*) ; 
 int FUNC2 (struct sway_container*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

struct sway_container *FUNC4(struct sway_container *con,
		uint32_t axis) {
	enum sway_container_layout parallel_layout =
		FUNC3(axis) ? L_HORIZ : L_VERT;
	bool allow_first = axis != WLR_EDGE_TOP && axis != WLR_EDGE_LEFT;
	bool allow_last = axis != WLR_EDGE_RIGHT && axis != WLR_EDGE_BOTTOM;

	while (con) {
		list_t *siblings = FUNC0(con);
		int index = FUNC2(con);
		if (FUNC1(con) == parallel_layout &&
				siblings->length > 1 && (allow_first || index > 0) &&
				(allow_last || index < siblings->length - 1)) {
			return con;
		}
		con = con->parent;
	}

	return NULL;
}