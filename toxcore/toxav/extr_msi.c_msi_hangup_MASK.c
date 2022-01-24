#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ state; int /*<<< orphan*/  friend_number; TYPE_1__* session; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  messenger; } ;
typedef  TYPE_1__ MSISession ;
typedef  int /*<<< orphan*/  MSIMessage ;
typedef  TYPE_2__ MSICall ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ msi_CallInactive ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  requ_pop ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7 (MSICall *call)
{
    if (!call || !call->session)
        return -1;

    FUNC0("Session: %p Hanging up call with friend: %u", call->session, call->friend_number);

    MSISession *session = call->session;

    if (FUNC4(session->mutex) != 0) {
        FUNC1 ("Failed to aquire lock on msi mutex");
        return -1;
    }

    if (call->state == msi_CallInactive) {
        FUNC1("Call is in invalid state!");
        FUNC5(session->mutex);
        return -1;
    }

    MSIMessage msg;
    FUNC3(&msg, requ_pop);

    FUNC6 (session->messenger, call->friend_number, &msg);

    FUNC2(call);
    FUNC5(session->mutex);
    return 0;
}