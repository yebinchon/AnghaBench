#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int refcount; scalar_t__ encoding; void* ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_22__ {TYPE_3__* db; int /*<<< orphan*/ * argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_25__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_24__ {TYPE_1__* crlf; TYPE_1__* colon; } ;
struct TYPE_23__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 long long LLONG_MAX ; 
 long long LLONG_MIN ; 
 long long LONG_MAX ; 
 long long LONG_MIN ; 
 int /*<<< orphan*/  NOTIFY_STRING ; 
 scalar_t__ OBJ_ENCODING_INT ; 
 long long OBJ_SHARED_INTEGERS ; 
 int /*<<< orphan*/  OBJ_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (long long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_1__*,long long*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__ server ; 
 TYPE_4__ shared ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void FUNC10(client *c, long long incr) {
    long long value, oldvalue;
    robj *o, *new;

    o = FUNC7(c->db,c->argv[1]);
    if (o != NULL && FUNC2(c,o,OBJ_STRING)) return;
    if (FUNC6(c,o,&value,NULL) != C_OK) return;

    oldvalue = value;
    if ((incr < 0 && oldvalue < 0 && incr < (LLONG_MIN-oldvalue)) ||
        (incr > 0 && oldvalue > 0 && incr > (LLONG_MAX-oldvalue))) {
        FUNC1(c,"increment or decrement would overflow");
        return;
    }
    value += incr;

    if (o && o->refcount == 1 && o->encoding == OBJ_ENCODING_INT &&
        (value < 0 || value >= OBJ_SHARED_INTEGERS) &&
        value >= LONG_MIN && value <= LONG_MAX)
    {
        new = o;
        o->ptr = (void*)((long)value);
    } else {
        new = FUNC3(value);
        if (o) {
            FUNC5(c->db,c->argv[1],new);
        } else {
            FUNC4(c->db,c->argv[1],new);
        }
    }
    FUNC9(c->db,c->argv[1]);
    FUNC8(NOTIFY_STRING,"incrby",c->argv[1],c->db->id);
    server.dirty++;
    FUNC0(c,shared.colon);
    FUNC0(c,new);
    FUNC0(c,shared.crlf);
}