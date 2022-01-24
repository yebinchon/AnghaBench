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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int exists; int /*<<< orphan*/  value; } ;
struct TYPE_6__ {TYPE_1__ error; } ;
typedef  int /*<<< orphan*/  Messenger ;
typedef  TYPE_2__ MSIMessage ;
typedef  int /*<<< orphan*/  MSIError ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  requ_pop ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 

int FUNC4 (Messenger *m, uint32_t friend_number, MSIError error)
{
    /* Send error message */
    FUNC1(m);

    FUNC0("Sending error: %d to friend: %d", error, friend_number);

    MSIMessage msg;
    FUNC2(&msg, requ_pop);

    msg.error.exists = true;
    msg.error.value = error;

    FUNC3 (m, friend_number, &msg);
    return 0;
}