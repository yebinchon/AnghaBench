#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_6__ {TYPE_1__* db; } ;
typedef  TYPE_2__ client ;
struct TYPE_7__ {int /*<<< orphan*/  multiCommand; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int PROPAGATE_AOF ; 
 int PROPAGATE_REPL ; 
 int /*<<< orphan*/ * FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int) ; 
 TYPE_3__ server ; 

void FUNC3(client *c) {
    robj *multistring = FUNC0("MULTI",5);

    FUNC2(server.multiCommand,c->db->id,&multistring,1,
              PROPAGATE_AOF|PROPAGATE_REPL);
    FUNC1(multistring);
}