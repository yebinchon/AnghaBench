#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  size_t int32_t ;
struct TYPE_6__ {TYPE_1__* friendlist; } ;
struct TYPE_5__ {int /*<<< orphan*/  statusmessage; int /*<<< orphan*/  statusmessage_length; } ;
typedef  TYPE_2__ Messenger ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC4(const Messenger *m, int32_t friendnumber, uint8_t *buf, uint32_t maxlen)
{
    if (FUNC1(m, friendnumber))
        return -1;

    int msglen = FUNC0(maxlen, m->friendlist[friendnumber].statusmessage_length);

    FUNC2(buf, m->friendlist[friendnumber].statusmessage, msglen);
    FUNC3(buf + msglen, 0, maxlen - msglen);
    return msglen;
}