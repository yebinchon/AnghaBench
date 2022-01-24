#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int in_gc_queue; } ;
typedef  TYPE_1__ User ;
struct TYPE_22__ {TYPE_1__* user_gc_queue; TYPE_1__* session_gc_queue; TYPE_1__* seat_gc_queue; } ;
typedef  TYPE_1__ Session ;
typedef  TYPE_1__ Seat ;
typedef  TYPE_4__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ SESSION_CLOSING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  gc_queue ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC14(Manager *m, bool drop_not_started) {
        Seat *seat;
        Session *session;
        User *user;

        FUNC1(m);

        while ((seat = m->seat_gc_queue)) {
                FUNC0(gc_queue, m->seat_gc_queue, seat);
                seat->in_gc_queue = false;

                if (FUNC3(seat, drop_not_started)) {
                        FUNC4(seat, false);
                        FUNC2(seat);
                }
        }

        while ((session = m->session_gc_queue)) {
                FUNC0(gc_queue, m->session_gc_queue, session);
                session->in_gc_queue = false;

                /* First, if we are not closing yet, initiate stopping */
                if (FUNC8(session, drop_not_started) &&
                    FUNC7(session) != SESSION_CLOSING)
                        (void) FUNC9(session, false);

                /* Normally, this should make the session referenced
                 * again, if it doesn't then let's get rid of it
                 * immediately */
                if (FUNC8(session, drop_not_started)) {
                        (void) FUNC5(session);
                        FUNC6(session);
                }
        }

        while ((user = m->user_gc_queue)) {
                FUNC0(gc_queue, m->user_gc_queue, user);
                user->in_gc_queue = false;

                /* First step: queue stop jobs */
                if (FUNC12(user, drop_not_started))
                        (void) FUNC13(user, false);

                /* Second step: finalize user */
                if (FUNC12(user, drop_not_started)) {
                        (void) FUNC10(user);
                        FUNC11(user);
                }
        }
}