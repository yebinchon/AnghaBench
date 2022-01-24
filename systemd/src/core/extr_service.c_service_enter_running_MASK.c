#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ result; scalar_t__ notify_state; scalar_t__ remain_after_exit; int /*<<< orphan*/  runtime_max_usec; } ;
struct TYPE_16__ {int /*<<< orphan*/  monotonic; } ;
struct TYPE_15__ {TYPE_1__ active_enter_timestamp; } ;
typedef  scalar_t__ ServiceResult ;
typedef  TYPE_2__ Service ;

/* Variables and functions */
 scalar_t__ NOTIFY_RELOADING ; 
 scalar_t__ NOTIFY_STOPPING ; 
 int /*<<< orphan*/  SERVICE_EXITED ; 
 int /*<<< orphan*/  SERVICE_RUNNING ; 
 int /*<<< orphan*/  SERVICE_STOP_SIGTERM ; 
 scalar_t__ SERVICE_SUCCESS ; 
 TYPE_13__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(Service *s, ServiceResult f) {
        FUNC1(s);

        if (s->result == SERVICE_SUCCESS)
                s->result = f;

        FUNC9(s);

        if (s->result != SERVICE_SUCCESS)
                FUNC4(s, SERVICE_STOP_SIGTERM, f);
        else if (FUNC7(s)) {

                /* If there are any queued up sd_notify() notifications, process them now */
                if (s->notify_state == NOTIFY_RELOADING)
                        FUNC3(s);
                else if (s->notify_state == NOTIFY_STOPPING)
                        FUNC6(s);
                else {
                        FUNC8(s, SERVICE_RUNNING);
                        FUNC2(s, FUNC10(FUNC0(s)->active_enter_timestamp.monotonic, s->runtime_max_usec));
                }

        } else if (s->remain_after_exit)
                FUNC8(s, SERVICE_EXITED);
        else
                FUNC5(s, SERVICE_SUCCESS);
}