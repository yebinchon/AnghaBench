#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ type; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_13__ {scalar_t__ load_state; int /*<<< orphan*/  id; } ;
struct TYPE_12__ {int /*<<< orphan*/  service; } ;
typedef  int /*<<< orphan*/  Service ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (TYPE_1__*) ; 
 TYPE_8__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNIT_LOADED ; 
 scalar_t__ UNIT_SOCKET ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int,char*) ; 
 int FUNC9 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC10(Unit *u) {
        int r;

        FUNC5(u);

        if (u->type != UNIT_SOCKET)
                return 0;

        /* Cannot run this without the service being around */

        /* This makes sure instance is created if necessary. */
        r = FUNC9(FUNC1(u));
        if (r < 0)
                return FUNC8(u, r, "Socket cannot be started, failed to create instance: %m");

        /* This checks both type of sockets */
        if (FUNC4(FUNC1(u)->service)) {
                Service *service;

                service = FUNC0(FUNC3(FUNC1(u)->service));
                FUNC6(u, "Using %s", FUNC2(service)->id);

                if (FUNC2(service)->load_state != UNIT_LOADED) {
                        FUNC7(u, "Service %s not loaded, %s cannot be started.", FUNC2(service)->id, u->id);
                        return -ENOENT;
                }
        }

        return 0;
}