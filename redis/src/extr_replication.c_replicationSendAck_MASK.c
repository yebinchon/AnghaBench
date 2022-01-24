#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  reploff; } ;
typedef  TYPE_1__ client ;
struct TYPE_7__ {TYPE_1__* master; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_MASTER_FORCE_REPLY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_2__ server ; 

void FUNC3(void) {
    client *c = server.master;

    if (c != NULL) {
        c->flags |= CLIENT_MASTER_FORCE_REPLY;
        FUNC0(c,3);
        FUNC1(c,"REPLCONF");
        FUNC1(c,"ACK");
        FUNC2(c,c->reploff);
        c->flags &= ~CLIENT_MASTER_FORCE_REPLY;
    }
}