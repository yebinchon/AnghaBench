#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_15__ {int state; int /*<<< orphan*/  error; int /*<<< orphan*/  friend_number; TYPE_11__* session; int /*<<< orphan*/  self_capabilities; int /*<<< orphan*/  peer_capabilities; } ;
struct TYPE_13__ {int exists; int /*<<< orphan*/  value; } ;
struct TYPE_14__ {TYPE_1__ capabilities; } ;
struct TYPE_12__ {int /*<<< orphan*/  messenger; } ;
typedef  TYPE_2__ MSIMessage ;
typedef  TYPE_3__ MSICall ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_11__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
#define  msi_CallActive 129 
#define  msi_CallInactive 128 
 int msi_CallRequested ; 
 int /*<<< orphan*/  msi_EInvalidMessage ; 
 int /*<<< orphan*/  msi_EInvalidState ; 
 int /*<<< orphan*/  msi_OnInvite ; 
 int /*<<< orphan*/  requ_push ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

void FUNC9 (MSICall *call, const MSIMessage *msg)
{
    FUNC3(call);
    FUNC0("Session: %p Handling 'init' friend: %d", call->session, call->friend_number);

    if (!msg->capabilities.exists) {
        FUNC2("Session: %p Invalid capabilities on 'init'");
        call->error = msi_EInvalidMessage;
        goto FAILURE;
    }

    switch (call->state) {
        case msi_CallInactive: {
            /* Call requested */
            call->peer_capabilities = msg->capabilities.value;
            call->state = msi_CallRequested;

            if (FUNC4(call, msi_OnInvite) == -1)
                goto FAILURE;
        }
        break;

        case msi_CallActive: {
            /* If peer sent init while the call is already
             * active it's probable that he is trying to
             * re-call us while the call is not terminated
             * on our side. We can assume that in this case
             * we can automatically answer the re-call.
             */

            FUNC1("Friend is recalling us");

            MSIMessage msg;
            FUNC6(&msg, requ_push);

            msg.capabilities.exists = true;
            msg.capabilities.value = call->self_capabilities;

            FUNC8 (call->session->messenger, call->friend_number, &msg);

            /* If peer changed capabilities during re-call they will
             * be handled accordingly during the next step
             */
        }
        break;

        default: {
            FUNC2("Session: %p Invalid state on 'init'");
            call->error = msi_EInvalidState;
            goto FAILURE;
        }
        break;
    }

    return;
FAILURE:
    FUNC7(call->session->messenger, call->friend_number, call->error);
    FUNC5(call);
}