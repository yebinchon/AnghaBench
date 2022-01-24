#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  User ;
struct TYPE_6__ {int /*<<< orphan*/  action_job; int /*<<< orphan*/  wall_message; int /*<<< orphan*/  scheduled_shutdown_tty; int /*<<< orphan*/  scheduled_shutdown_type; int /*<<< orphan*/  kill_exclude_users; int /*<<< orphan*/  kill_only_users; int /*<<< orphan*/  reserve_vt_fd; int /*<<< orphan*/  event; int /*<<< orphan*/  bus; int /*<<< orphan*/  polkit_registry; scalar_t__ unlink_nologin; int /*<<< orphan*/  device_button_monitor; int /*<<< orphan*/  device_vcsa_monitor; int /*<<< orphan*/  device_monitor; int /*<<< orphan*/  device_seat_monitor; int /*<<< orphan*/  console_active_fd; int /*<<< orphan*/  utmp_event_source; int /*<<< orphan*/  lid_switch_ignore_event_source; int /*<<< orphan*/  console_active_event_source; int /*<<< orphan*/  wall_message_timeout_source; int /*<<< orphan*/  nologin_timeout_source; int /*<<< orphan*/  scheduled_shutdown_timeout_source; int /*<<< orphan*/  inhibit_timeout_source; int /*<<< orphan*/  idle_action_event_source; int /*<<< orphan*/  session_units; int /*<<< orphan*/  user_units; int /*<<< orphan*/  brightness_writers; int /*<<< orphan*/  buttons; int /*<<< orphan*/  inhibitors; int /*<<< orphan*/  users; int /*<<< orphan*/  sessions_by_leader; int /*<<< orphan*/  sessions; int /*<<< orphan*/  seats; int /*<<< orphan*/  devices; } ;
typedef  int /*<<< orphan*/  Session ;
typedef  int /*<<< orphan*/  Seat ;
typedef  TYPE_1__ Manager ;
typedef  int /*<<< orphan*/  Inhibitor ;
typedef  int /*<<< orphan*/  Device ;
typedef  int /*<<< orphan*/  Button ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Manager* FUNC18(Manager *m) {
        Session *session;
        User *u;
        Device *d;
        Seat *s;
        Inhibitor *i;
        Button *b;

        if (!m)
                return NULL;

        while ((session = FUNC4(m->sessions)))
                FUNC14(session);

        while ((u = FUNC4(m->users)))
                FUNC17(u);

        while ((d = FUNC4(m->devices)))
                FUNC2(d);

        while ((s = FUNC4(m->seats)))
                FUNC13(s);

        while ((i = FUNC4(m->inhibitors)))
                FUNC6(i);

        while ((b = FUNC4(m->buttons)))
                FUNC1(b);

        FUNC5(m->devices);
        FUNC5(m->seats);
        FUNC5(m->sessions);
        FUNC5(m->sessions_by_leader);
        FUNC5(m->users);
        FUNC5(m->inhibitors);
        FUNC5(m->buttons);
        FUNC5(m->brightness_writers);

        FUNC5(m->user_units);
        FUNC5(m->session_units);

        FUNC11(m->idle_action_event_source);
        FUNC11(m->inhibit_timeout_source);
        FUNC11(m->scheduled_shutdown_timeout_source);
        FUNC11(m->nologin_timeout_source);
        FUNC11(m->wall_message_timeout_source);

        FUNC11(m->console_active_event_source);
        FUNC11(m->lid_switch_ignore_event_source);

#if ENABLE_UTMP
        sd_event_source_unref(m->utmp_event_source);
#endif

        FUNC8(m->console_active_fd);

        FUNC10(m->device_seat_monitor);
        FUNC10(m->device_monitor);
        FUNC10(m->device_vcsa_monitor);
        FUNC10(m->device_button_monitor);

        if (m->unlink_nologin)
                (void) FUNC16("/run/nologin");

        FUNC0(m->polkit_registry);

        FUNC9(m->bus);
        FUNC12(m->event);

        FUNC8(m->reserve_vt_fd);

        FUNC15(m->kill_only_users);
        FUNC15(m->kill_exclude_users);

        FUNC3(m->scheduled_shutdown_type);
        FUNC3(m->scheduled_shutdown_tty);
        FUNC3(m->wall_message);
        FUNC3(m->action_job);

        return FUNC7(m);
}