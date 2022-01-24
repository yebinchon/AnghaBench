#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  fd; int /*<<< orphan*/  address; int /*<<< orphan*/  event_source; TYPE_1__* server; } ;
typedef  TYPE_2__ VarlinkServerSocket ;
struct TYPE_8__ {int /*<<< orphan*/  sockets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sockets ; 

__attribute__((used)) static VarlinkServerSocket* FUNC5(VarlinkServerSocket *ss) {
        if (!ss)
                return NULL;

        if (ss->server)
                FUNC0(sockets, ss->server->sockets, ss);

        FUNC4(ss->event_source);

        FUNC1(ss->address);
        FUNC3(ss->fd);

        return FUNC2(ss);
}