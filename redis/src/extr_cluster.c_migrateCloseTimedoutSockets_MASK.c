#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ last_use_time; int /*<<< orphan*/  conn; } ;
typedef  TYPE_1__ migrateCachedSocket ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_6__ {scalar_t__ unixtime; int /*<<< orphan*/  migrate_cached_sockets; } ;

/* Variables and functions */
 scalar_t__ MIGRATE_SOCKET_CACHE_TTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void FUNC8(void) {
    dictIterator *di = FUNC3(server.migrate_cached_sockets);
    dictEntry *de;

    while((de = FUNC5(di)) != NULL) {
        migrateCachedSocket *cs = FUNC4(de);

        if ((server.unixtime - cs->last_use_time) > MIGRATE_SOCKET_CACHE_TTL) {
            FUNC0(cs->conn);
            FUNC7(cs);
            FUNC1(server.migrate_cached_sockets,FUNC2(de));
        }
    }
    FUNC6(di);
}