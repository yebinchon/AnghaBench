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
typedef  scalar_t__ uint8_t ;
struct TYPE_6__ {TYPE_1__* friendlist; } ;
struct TYPE_5__ {scalar_t__ status; } ;
typedef  TYPE_2__ Messenger ;

/* Variables and functions */
 int /*<<< orphan*/  FRIEND_CONFIRMED ; 
 scalar_t__ FRIEND_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void *object, int i, uint8_t status)
{
    Messenger *m = object;

    if (status) { /* Went online. */
        FUNC0(m, i);
    } else { /* Went offline. */
        if (m->friendlist[i].status == FRIEND_ONLINE) {
            FUNC1(m, i, FRIEND_CONFIRMED);
        }
    }

    return 0;
}