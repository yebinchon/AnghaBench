#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  messenger; } ;
struct TYPE_12__ {int state; int /*<<< orphan*/  error; int /*<<< orphan*/  friend_number; TYPE_9__* session; int /*<<< orphan*/  peer_capabilities; } ;
struct TYPE_10__ {int /*<<< orphan*/  value; int /*<<< orphan*/  exists; } ;
struct TYPE_11__ {TYPE_1__ capabilities; } ;
typedef  TYPE_2__ MSIMessage ;
typedef  TYPE_3__ MSICall ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
#define  msi_CallActive 131 
#define  msi_CallInactive 130 
#define  msi_CallRequested 129 
#define  msi_CallRequesting 128 
 int /*<<< orphan*/  msi_EInvalidMessage ; 
 int /*<<< orphan*/  msi_OnCapabilities ; 
 int /*<<< orphan*/  msi_OnStart ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7 (MSICall *call, const MSIMessage *msg)
{
    FUNC3(call);

    FUNC0("Session: %p Handling 'push' friend: %d", call->session, call->friend_number);

    if (!msg->capabilities.exists) {
        FUNC2("Session: %p Invalid capabilities on 'push'");
        call->error = msi_EInvalidMessage;
        goto FAILURE;
    }

    switch (call->state) {
        case msi_CallActive: {
            /* Only act if capabilities changed */
            if (call->peer_capabilities != msg->capabilities.value) {
                FUNC1("Friend is changing capabilities to: %u", msg->capabilities.value);

                call->peer_capabilities = msg->capabilities.value;

                if (FUNC4(call, msi_OnCapabilities) == -1)
                    goto FAILURE;
            }
        }
        break;

        case msi_CallRequesting: {
            FUNC1("Friend answered our call");

            /* Call started */
            call->peer_capabilities = msg->capabilities.value;
            call->state = msi_CallActive;

            if (FUNC4(call, msi_OnStart) == -1)
                goto FAILURE;

        }
        break;

        /* Pushes during initialization state are ignored */
        case msi_CallInactive:
        case msi_CallRequested: {
            FUNC2("Ignoring invalid push");
        }
        break;
    }

    return;

FAILURE:
    FUNC6(call->session->messenger, call->friend_number, call->error);
    FUNC5(call);
}