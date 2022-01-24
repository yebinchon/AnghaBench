#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
struct TYPE_8__ {char* ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_9__ {int /*<<< orphan*/  conn; } ;
typedef  TYPE_2__ migrateCachedSocket ;
struct TYPE_10__ {int /*<<< orphan*/  migrate_cached_sockets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 
 TYPE_4__ server ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

void FUNC8(robj *host, robj *port) {
    sds name = FUNC4();
    migrateCachedSocket *cs;

    name = FUNC3(name,host->ptr,FUNC6(host->ptr));
    name = FUNC3(name,":",1);
    name = FUNC3(name,port->ptr,FUNC6(port->ptr));
    cs = FUNC2(server.migrate_cached_sockets,name);
    if (!cs) {
        FUNC5(name);
        return;
    }

    FUNC0(cs->conn);
    FUNC7(cs);
    FUNC1(server.migrate_cached_sockets,name);
    FUNC5(name);
}