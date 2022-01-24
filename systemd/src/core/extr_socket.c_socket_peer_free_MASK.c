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
struct TYPE_10__ {TYPE_1__* socket; } ;
struct TYPE_9__ {int /*<<< orphan*/  peers_by_address; } ;
typedef  TYPE_2__ SocketPeer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static SocketPeer *FUNC3(SocketPeer *p) {
        FUNC0(p);

        if (p->socket)
                FUNC2(p->socket->peers_by_address, p);

        return FUNC1(p);
}