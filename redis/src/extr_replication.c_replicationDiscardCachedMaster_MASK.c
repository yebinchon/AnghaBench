#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {TYPE_2__* cached_master; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_MASTER ; 
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

void FUNC2(void) {
    if (server.cached_master == NULL) return;

    FUNC1(LL_NOTICE,"Discarding previously cached master state.");
    server.cached_master->flags &= ~CLIENT_MASTER;
    FUNC0(server.cached_master);
    server.cached_master = NULL;
}