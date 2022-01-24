#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/ * friendlist; } ;
typedef  TYPE_1__ Messenger ;
typedef  int /*<<< orphan*/  Friend ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 

int FUNC2(Messenger *m, uint32_t num)
{
    if (num == 0) {
        FUNC0(m->friendlist);
        m->friendlist = NULL;
        return 0;
    }

    Friend *newfriendlist = FUNC1(m->friendlist, num * sizeof(Friend));

    if (newfriendlist == NULL)
        return -1;

    m->friendlist = newfriendlist;
    return 0;
}