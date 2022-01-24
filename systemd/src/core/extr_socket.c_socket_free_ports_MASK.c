#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* ports; } ;
struct TYPE_9__ {struct TYPE_9__* path; int /*<<< orphan*/  fd; int /*<<< orphan*/  event_source; } ;
typedef  TYPE_1__ SocketPort ;
typedef  TYPE_2__ Socket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  port ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(Socket *s) {
        SocketPort *p;

        FUNC1(s);

        while ((p = s->ports)) {
                FUNC0(port, s->ports, p);

                FUNC4(p->event_source);

                FUNC5(p);
                FUNC3(p->fd);
                FUNC2(p->path);
                FUNC2(p);
        }
}