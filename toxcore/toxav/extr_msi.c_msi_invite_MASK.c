#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_17__ {int /*<<< orphan*/  state; int /*<<< orphan*/  friend_number; TYPE_2__* session; void* self_capabilities; } ;
struct TYPE_13__ {int exists; void* value; } ;
struct TYPE_16__ {TYPE_1__ capabilities; } ;
struct TYPE_15__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_14__ {int /*<<< orphan*/  messenger; } ;
typedef  TYPE_3__ MSISession ;
typedef  TYPE_4__ MSIMessage ;
typedef  TYPE_5__ MSICall ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msi_CallRequesting ; 
 TYPE_5__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  requ_init ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 

int FUNC8 (MSISession *session, MSICall **call, uint32_t friend_number, uint8_t capabilities)
{
    if (!session)
        return -1;

    FUNC0("Session: %p Inviting friend: %u", session, friend_number);

    if (FUNC5(session->mutex) != 0) {
        FUNC1 ("Failed to aquire lock on msi mutex");
        return -1;
    }

    if (FUNC2(session, friend_number) != NULL) {
        FUNC1("Already in a call");
        FUNC6(session->mutex);
        return -1;
    }

    (*call) = FUNC4 (session, friend_number);

    if (*call == NULL) {
        FUNC6(session->mutex);
        return -1;
    }

    (*call)->self_capabilities = capabilities;

    MSIMessage msg;
    FUNC3(&msg, requ_init);

    msg.capabilities.exists = true;
    msg.capabilities.value = capabilities;

    FUNC7 ((*call)->session->messenger, (*call)->friend_number, &msg);

    (*call)->state = msi_CallRequesting;

    FUNC0("Invite sent");
    FUNC6(session->mutex);
    return 0;
}