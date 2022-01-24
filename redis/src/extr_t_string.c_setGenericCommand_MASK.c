#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_14__ {size_t resp; TYPE_4__* db; TYPE_1__* cmd; } ;
typedef  TYPE_2__ client ;
struct TYPE_17__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_16__ {int /*<<< orphan*/  id; } ;
struct TYPE_15__ {int /*<<< orphan*/ * ok; int /*<<< orphan*/ ** null; } ;
struct TYPE_13__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  NOTIFY_GENERIC ; 
 int /*<<< orphan*/  NOTIFY_STRING ; 
 int OBJ_SET_NX ; 
 int OBJ_SET_XX ; 
 int UNIT_SECONDS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,long long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_8__ server ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__ shared ; 

void FUNC8(client *c, int flags, robj *key, robj *val, robj *expire, int unit, robj *ok_reply, robj *abort_reply) {
    long long milliseconds = 0; /* initialized to avoid any harmness warning */

    if (expire) {
        if (FUNC2(c, expire, &milliseconds, NULL) != C_OK)
            return;
        if (milliseconds <= 0) {
            FUNC1(c,"invalid expire time in %s",c->cmd->name);
            return;
        }
        if (unit == UNIT_SECONDS) milliseconds *= 1000;
    }

    if ((flags & OBJ_SET_NX && FUNC3(c->db,key) != NULL) ||
        (flags & OBJ_SET_XX && FUNC3(c->db,key) == NULL))
    {
        FUNC0(c, abort_reply ? abort_reply : shared.null[c->resp]);
        return;
    }
    FUNC7(c->db,key,val);
    server.dirty++;
    if (expire) FUNC6(c,c->db,key,FUNC4()+milliseconds);
    FUNC5(NOTIFY_STRING,"set",key,c->db->id);
    if (expire) FUNC5(NOTIFY_GENERIC,
        "expire",key,c->db->id);
    FUNC0(c, ok_reply ? ok_reply : shared.ok);
}