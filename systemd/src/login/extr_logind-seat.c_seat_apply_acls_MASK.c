#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* active; int /*<<< orphan*/  id; } ;
struct TYPE_12__ {TYPE_1__* user; } ;
struct TYPE_11__ {int /*<<< orphan*/  uid; } ;
struct TYPE_10__ {TYPE_3__* user; } ;
struct TYPE_9__ {int /*<<< orphan*/  uid; } ;
typedef  TYPE_4__ Session ;
typedef  TYPE_5__ Seat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char*) ; 

int FUNC3(Seat *s, Session *old_active) {
        int r;

        FUNC0(s);

        r = FUNC1(s->id,
                            false,
                            !!old_active, old_active ? old_active->user->uid : 0,
                            !!s->active, s->active ? s->active->user->uid : 0);

        if (r < 0)
                return FUNC2(r, "Failed to apply ACLs: %m");

        return 0;
}