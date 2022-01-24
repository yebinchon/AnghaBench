#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int state; int /*<<< orphan*/  error; int /*<<< orphan*/  friend_number; int /*<<< orphan*/  session; } ;
struct TYPE_9__ {int /*<<< orphan*/  value; scalar_t__ exists; } ;
struct TYPE_10__ {TYPE_1__ error; } ;
typedef  TYPE_2__ MSIMessage ;
typedef  TYPE_3__ MSICall ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
#define  msi_CallActive 131 
#define  msi_CallInactive 130 
#define  msi_CallRequested 129 
#define  msi_CallRequesting 128 
 int /*<<< orphan*/  msi_OnEnd ; 
 int /*<<< orphan*/  msi_OnError ; 

void FUNC8 (MSICall *call, const MSIMessage *msg)
{
    FUNC5(call);

    FUNC0("Session: %p Handling 'pop', friend id: %d", call->session, call->friend_number);

    /* callback errors are ignored */

    if (msg->error.exists) {
        FUNC3("Friend detected an error: %d", msg->error.value);
        call->error = msg->error.value;
        FUNC6(call, msi_OnError);

    } else switch (call->state) {
            case msi_CallInactive: {
                FUNC1("Handling what should be impossible case");
                FUNC4();
            }
            break;

            case msi_CallActive: {
                /* Hangup */
                FUNC2("Friend hung up on us");
                FUNC6(call, msi_OnEnd);
            }
            break;

            case msi_CallRequesting: {
                /* Reject */
                FUNC2("Friend rejected our call");
                FUNC6(call, msi_OnEnd);
            }
            break;

            case msi_CallRequested: {
                /* Cancel */
                FUNC2("Friend canceled call invite");
                FUNC6(call, msi_OnEnd);
            }
            break;
        }

    FUNC7 (call);
}