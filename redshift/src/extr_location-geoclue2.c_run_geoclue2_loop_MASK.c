#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  loop; int /*<<< orphan*/  pipe_fd_write; } ;
typedef  TYPE_1__ location_geoclue2_state_t ;
typedef  int /*<<< orphan*/  guint ;
typedef  int /*<<< orphan*/  GSourceFunc ;
typedef  int /*<<< orphan*/  GSource ;
typedef  int /*<<< orphan*/  GMainContext ;
typedef  int /*<<< orphan*/  GIOChannel ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  G_BUS_NAME_WATCHER_FLAGS_AUTO_START ; 
 int /*<<< orphan*/  G_BUS_TYPE_SYSTEM ; 
 int G_IO_ERR ; 
 int G_IO_HUP ; 
 int G_IO_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  on_name_appeared ; 
 int /*<<< orphan*/  on_name_vanished ; 
 scalar_t__ on_pipe_closed ; 

__attribute__((used)) static void *
FUNC15(void *state_)
{
	location_geoclue2_state_t *state = state_;

	GMainContext *context = FUNC6();
	FUNC7(context);
	state->loop = FUNC9(context, FALSE);

	guint watcher_id = FUNC2(
		G_BUS_TYPE_SYSTEM,
		"org.freedesktop.GeoClue2",
		G_BUS_NAME_WATCHER_FLAGS_AUTO_START,
		on_name_appeared,
		on_name_vanished,
		state, NULL);

	/* Listen for closure of pipe */
	GIOChannel *pipe_channel = FUNC3(state->pipe_fd_write);
	GSource *pipe_source = FUNC5(
		pipe_channel, G_IO_IN | G_IO_HUP | G_IO_ERR);
        FUNC13(
		pipe_source, (GSourceFunc)on_pipe_closed, state, NULL);
        FUNC12(pipe_source, context);

	FUNC10(state->loop);

	FUNC14(pipe_source);
	FUNC4(pipe_channel);
	FUNC0(state->pipe_fd_write);

	FUNC1(watcher_id);

	FUNC11(state->loop);
	FUNC8(context);

	return NULL;
}