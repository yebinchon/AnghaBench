#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int argc; TYPE_3__* db; int /*<<< orphan*/ * argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_12__ {int dirty; } ;
struct TYPE_11__ {int /*<<< orphan*/  id; } ;
struct TYPE_10__ {int /*<<< orphan*/  ok; int /*<<< orphan*/  cone; int /*<<< orphan*/  czero; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOTIFY_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ server ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ shared ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(client *c, int nx) {
    int j;

    if ((c->argc % 2) == 0) {
        FUNC1(c,"wrong number of arguments for MSET");
        return;
    }

    /* Handle the NX flag. The MSETNX semantic is to return zero and don't
     * set anything if at least one key alerady exists. */
    if (nx) {
        for (j = 1; j < c->argc; j += 2) {
            if (FUNC2(c->db,c->argv[j]) != NULL) {
                FUNC0(c, shared.czero);
                return;
            }
        }
    }

    for (j = 1; j < c->argc; j += 2) {
        c->argv[j+1] = FUNC5(c->argv[j+1]);
        FUNC4(c->db,c->argv[j],c->argv[j+1]);
        FUNC3(NOTIFY_STRING,"set",c->argv[j],c->db->id);
    }
    server.dirty += (c->argc-1)/2;
    FUNC0(c, nx ? shared.cone : shared.ok);
}