#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_14__ {int argc; TYPE_2__* db; TYPE_3__** argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_18__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_17__ {int /*<<< orphan*/  ok; } ;
struct TYPE_16__ {char* ptr; } ;
struct TYPE_15__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_SET_COPY ; 
 int /*<<< orphan*/  NOTIFY_HASH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__**,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_5__ server ; 
 TYPE_4__ shared ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_3__*) ; 

void FUNC8(client *c) {
    int i, created = 0;
    robj *o;

    if ((c->argc % 2) == 1) {
        FUNC1(c,"wrong number of arguments for HMSET");
        return;
    }

    if ((o = FUNC3(c,c->argv[1])) == NULL) return;
    FUNC5(o,c->argv,2,c->argc-1);

    for (i = 2; i < c->argc; i += 2)
        created += !FUNC4(o,c->argv[i]->ptr,c->argv[i+1]->ptr,HASH_SET_COPY);

    /* HMSET (deprecated) and HSET return value is different. */
    char *cmdname = c->argv[0]->ptr;
    if (cmdname[1] == 's' || cmdname[1] == 'S') {
        /* HSET */
        FUNC2(c, created);
    } else {
        /* HMSET */
        FUNC0(c, shared.ok);
    }
    FUNC7(c->db,c->argv[1]);
    FUNC6(NOTIFY_HASH,"hset",c->argv[1],c->db->id);
    server.dirty++;
}