#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  sessions; TYPE_2__* pending_switch; TYPE_2__* active; } ;
struct TYPE_15__ {TYPE_2__* display; int /*<<< orphan*/  sessions; } ;
struct TYPE_14__ {scalar_t__ fifo_path; scalar_t__ state_file; int /*<<< orphan*/  fifo_fd; int /*<<< orphan*/  fifo_event_source; scalar_t__ id; TYPE_1__* manager; scalar_t__ desktop; scalar_t__ service; scalar_t__ remote_user; scalar_t__ remote_host; scalar_t__ display; scalar_t__ tty; int /*<<< orphan*/  create_message; scalar_t__ scope_job; int /*<<< orphan*/  leader; scalar_t__ scope; TYPE_7__* seat; TYPE_3__* user; int /*<<< orphan*/  devices; int /*<<< orphan*/  timer_event_source; scalar_t__ in_gc_queue; } ;
struct TYPE_13__ {int /*<<< orphan*/  sessions; int /*<<< orphan*/  sessions_by_leader; int /*<<< orphan*/  session_units; int /*<<< orphan*/  session_gc_queue; } ;
typedef  int /*<<< orphan*/  SessionDevice ;
typedef  TYPE_2__ Session ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  gc_queue ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  sessions_by_seat ; 
 int /*<<< orphan*/  sessions_by_user ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 

Session* FUNC16(Session *s) {
        SessionDevice *sd;

        if (!s)
                return NULL;

        if (s->in_gc_queue)
                FUNC0(gc_queue, s->manager->session_gc_queue, s);

        s->timer_event_source = FUNC11(s->timer_event_source);

        FUNC14(s);

        while ((sd = FUNC3(s->devices)))
                FUNC13(sd);

        FUNC4(s->devices);

        if (s->user) {
                FUNC0(sessions_by_user, s->user->sessions, s);

                if (s->user->display == s)
                        s->user->display = NULL;

                FUNC15(s->user);
        }

        if (s->seat) {
                if (s->seat->active == s)
                        s->seat->active = NULL;
                if (s->seat->pending_switch == s)
                        s->seat->pending_switch = NULL;

                FUNC12(s->seat, s);
                FUNC0(sessions_by_seat, s->seat->sessions, s);
        }

        if (s->scope) {
                FUNC5(s->manager->session_units, s->scope);
                FUNC2(s->scope);
        }

        if (FUNC8(s->leader))
                (void) FUNC6(s->manager->sessions_by_leader, FUNC1(s->leader), s);

        FUNC2(s->scope_job);

        FUNC10(s->create_message);

        FUNC2(s->tty);
        FUNC2(s->display);
        FUNC2(s->remote_host);
        FUNC2(s->remote_user);
        FUNC2(s->service);
        FUNC2(s->desktop);

        FUNC5(s->manager->sessions, s->id);

        FUNC11(s->fifo_event_source);
        FUNC9(s->fifo_fd);

        /* Note that we remove neither the state file nor the fifo path here, since we want both to survive
         * daemon restarts */
        FUNC2(s->state_file);
        FUNC2(s->fifo_path);

        return FUNC7(s);
}