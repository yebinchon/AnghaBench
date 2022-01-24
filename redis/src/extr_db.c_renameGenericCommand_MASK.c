#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_22__ {TYPE_2__* db; TYPE_3__** argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_26__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_25__ {int /*<<< orphan*/  ok; int /*<<< orphan*/  cone; int /*<<< orphan*/  czero; int /*<<< orphan*/  nokeyerr; } ;
struct TYPE_24__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_23__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOTIFY_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 long long FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_8__ server ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_2__*,TYPE_3__*,long long) ; 
 TYPE_4__ shared ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_3__*) ; 

void FUNC12(client *c, int nx) {
    robj *o;
    long long expire;
    int samekey = 0;

    /* When source and dest key is the same, no operation is performed,
     * if the key exists, however we still return an error on unexisting key. */
    if (FUNC9(c->argv[1]->ptr,c->argv[2]->ptr) == 0) samekey = 1;

    if ((o = FUNC7(c,c->argv[1],shared.nokeyerr)) == NULL)
        return;

    if (samekey) {
        FUNC0(c,nx ? shared.czero : shared.ok);
        return;
    }

    FUNC5(o);
    expire = FUNC4(c->db,c->argv[1]);
    if (FUNC6(c->db,c->argv[2]) != NULL) {
        if (nx) {
            FUNC3(o);
            FUNC0(c,shared.czero);
            return;
        }
        /* Overwrite: delete the old key before creating the new one
         * with the same name. */
        FUNC2(c->db,c->argv[2]);
    }
    FUNC1(c->db,c->argv[2],o);
    if (expire != -1) FUNC10(c,c->db,c->argv[2],expire);
    FUNC2(c->db,c->argv[1]);
    FUNC11(c->db,c->argv[1]);
    FUNC11(c->db,c->argv[2]);
    FUNC8(NOTIFY_GENERIC,"rename_from",
        c->argv[1],c->db->id);
    FUNC8(NOTIFY_GENERIC,"rename_to",
        c->argv[2],c->db->id);
    server.dirty++;
    FUNC0(c,nx ? shared.cone : shared.ok);
}