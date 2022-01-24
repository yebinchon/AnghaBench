#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* db; int /*<<< orphan*/ * argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_8__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 int /*<<< orphan*/  NOTIFY_STRING ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(client *c) {
    if (FUNC0(c) == C_ERR) return;
    c->argv[2] = FUNC3(c->argv[2]);
    FUNC2(c->db,c->argv[1],c->argv[2]);
    FUNC1(NOTIFY_STRING,"set",c->argv[1],c->db->id);
    server.dirty++;
}