#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
struct TYPE_12__ {scalar_t__ state; int /*<<< orphan*/  friend_number; TYPE_2__* session; void* self_capabilities; } ;
struct TYPE_9__ {int exists; void* value; } ;
struct TYPE_11__ {TYPE_1__ capabilities; } ;
struct TYPE_10__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  messenger; } ;
typedef  TYPE_2__ MSISession ;
typedef  TYPE_3__ MSIMessage ;
typedef  TYPE_4__ MSICall ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ msi_CallActive ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  requ_push ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 

int FUNC6(MSICall *call, uint8_t capabilities)
{
    if (!call || !call->session)
        return -1;

    FUNC0("Session: %p Trying to change capabilities to friend %u", call->session, call->friend_number);

    MSISession *session = call->session;

    if (FUNC3(session->mutex) != 0) {
        FUNC1 ("Failed to aquire lock on msi mutex");
        return -1;
    }

    if (call->state != msi_CallActive) {
        FUNC1("Call is in invalid state!");
        FUNC4(session->mutex);
        return -1;
    }

    call->self_capabilities = capabilities;

    MSIMessage msg;
    FUNC2(&msg, requ_push);

    msg.capabilities.exists = true;
    msg.capabilities.value = capabilities;

    FUNC5 (call->session->messenger, call->friend_number, &msg);

    FUNC4(session->mutex);
    return 0;
}