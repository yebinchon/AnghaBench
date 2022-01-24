#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_10__ {int value; } ;
struct TYPE_12__ {TYPE_1__ request; } ;
struct TYPE_11__ {int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  Messenger ;
typedef  TYPE_2__ MSISession ;
typedef  TYPE_3__ MSIMessage ;
typedef  int /*<<< orphan*/  MSICall ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msi_EInvalidMessage ; 
 int /*<<< orphan*/  msi_EStrayMessage ; 
 int /*<<< orphan*/  msi_ESystem ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
#define  requ_init 130 
#define  requ_pop 129 
#define  requ_push 128 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11 (Messenger *m, uint32_t friend_number, const uint8_t *data, uint16_t length, void *object)
{
    FUNC0("Got msi message");

    MSISession *session = object;
    MSIMessage msg;

    if (FUNC6 (&msg, data, length) == -1) {
        FUNC1("Error parsing message");
        FUNC10(m, friend_number, msi_EInvalidMessage);
        return;
    } else {
        FUNC0("Successfully parsed message");
    }

    FUNC8(session->mutex);
    MSICall *call = FUNC2(session, friend_number);

    if (call == NULL) {
        if (msg.request.value != requ_init) {
            FUNC10(m, friend_number, msi_EStrayMessage);
            FUNC9(session->mutex);
            return;
        }

        call = FUNC7(session, friend_number);

        if (call == NULL) {
            FUNC10(m, friend_number, msi_ESystem);
            FUNC9(session->mutex);
            return;
        }
    }

    switch (msg.request.value) {
        case requ_init:
            FUNC3(call, &msg);
            break;

        case requ_push:
            FUNC5(call, &msg);
            break;

        case requ_pop:
            FUNC4(call, &msg); /* always kills the call */
            break;
    }

    FUNC9(session->mutex);
}