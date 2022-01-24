#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  cast ;
struct TYPE_8__ {scalar_t__ value; scalar_t__ exists; } ;
struct TYPE_7__ {scalar_t__ value; scalar_t__ exists; } ;
struct TYPE_6__ {scalar_t__ value; scalar_t__ exists; } ;
struct TYPE_9__ {TYPE_3__ capabilities; TYPE_2__ error; TYPE_1__ request; } ;
typedef  int /*<<< orphan*/  Messenger ;
typedef  TYPE_4__ MSIMessage ;

/* Variables and functions */
 int /*<<< orphan*/  IDCapabilities ; 
 int /*<<< orphan*/  IDError ; 
 int /*<<< orphan*/  IDRequest ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int MSI_MAXMSG_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,int,scalar_t__*) ; 

int FUNC5 (Messenger *m, uint32_t friend_number, const MSIMessage *msg)
{
    /* Parse and send message */
    FUNC2(m);

    uint8_t parsed [MSI_MAXMSG_SIZE];

    uint8_t *it = parsed;
    uint16_t size = 0;

    if (msg->request.exists) {
        uint8_t cast = msg->request.value;
        it = FUNC4(IDRequest, it, &cast,
                                  sizeof(cast), &size);
    } else {
        FUNC0("Must have request field");
        return -1;
    }

    if (msg->error.exists) {
        uint8_t cast = msg->error.value;
        it = FUNC4(IDError, it, &cast,
                                  sizeof(cast), &size);
    }

    if (msg->capabilities.exists) {
        it = FUNC4(IDCapabilities, it, &msg->capabilities.value,
                                  sizeof(msg->capabilities.value), &size);
    }

    if (it == parsed) {
        FUNC1("Parsing message failed; empty message");
        return -1;
    }

    *it = 0;
    size ++;

    if (FUNC3(m, friend_number, parsed, size)) {
        FUNC0("Sent message");
        return 0;
    }

    return -1;
}