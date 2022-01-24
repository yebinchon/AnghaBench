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
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  region; } ;
struct wlr_pointer_constraint_v1 {TYPE_3__* surface; int /*<<< orphan*/  region; TYPE_1__ current; } ;
struct TYPE_8__ {int /*<<< orphan*/  notify; int /*<<< orphan*/  link; } ;
struct sway_cursor {TYPE_4__ constraint_commit; struct wlr_pointer_constraint_v1* active_constraint; int /*<<< orphan*/  seat; } ;
struct seat_config {scalar_t__ allow_constrain; } ;
struct TYPE_6__ {int /*<<< orphan*/  commit; } ;
struct TYPE_7__ {TYPE_2__ events; int /*<<< orphan*/  input_region; } ;

/* Variables and functions */
 scalar_t__ CONSTRAIN_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct sway_cursor*) ; 
 int /*<<< orphan*/  handle_constraint_commit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct seat_config* FUNC4 (int /*<<< orphan*/ ) ; 
 struct seat_config* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sway_cursor*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (struct wlr_pointer_constraint_v1*) ; 
 int /*<<< orphan*/  FUNC11 (struct wlr_pointer_constraint_v1*) ; 

void FUNC12(struct sway_cursor *cursor,
		struct wlr_pointer_constraint_v1 *constraint) {
	struct seat_config *config = FUNC4(cursor->seat);
	if (!config) {
		config = FUNC5("*");
	}

	if (!config || config->allow_constrain == CONSTRAIN_DISABLE) {
		return;
	}

	if (cursor->active_constraint == constraint) {
		return;
	}

	FUNC8(&cursor->constraint_commit.link);
	if (cursor->active_constraint) {
		if (constraint == NULL) {
			FUNC6(cursor);
		}
		FUNC11(
			cursor->active_constraint);
	}

	cursor->active_constraint = constraint;

	if (constraint == NULL) {
		FUNC7(&cursor->constraint_commit.link);
		return;
	}

	// FIXME: Big hack, stolen from wlr_pointer_constraints_v1.c:121.
	// This is necessary because the focus may be set before the surface
	// has finished committing, which means that warping won't work properly,
	// since this code will be run *after* the focus has been set.
	// That is why we duplicate the code here.
	if (FUNC3(&constraint->current.region)) {
		FUNC2(&constraint->region,
			&constraint->surface->input_region, &constraint->current.region);
	} else {
		FUNC1(&constraint->region,
			&constraint->surface->input_region);
	}

	FUNC0(cursor);

	FUNC10(constraint);

	cursor->constraint_commit.notify = handle_constraint_commit;
	FUNC9(&constraint->surface->events.commit,
		&cursor->constraint_commit);
}