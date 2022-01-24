#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_12__ ;
typedef  struct TYPE_21__   TYPE_11__ ;

/* Type definitions */
struct TYPE_24__ {TYPE_1__* consumer; } ;
typedef  TYPE_2__ streamNACK ;
typedef  int /*<<< orphan*/  streamID ;
struct TYPE_25__ {int /*<<< orphan*/  pel; } ;
typedef  TYPE_3__ streamCG ;
struct TYPE_26__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_4__ robj ;
struct TYPE_27__ {int argc; TYPE_8__** argv; int /*<<< orphan*/  db; } ;
typedef  TYPE_5__ client ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_28__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_23__ {int /*<<< orphan*/  pel; } ;
struct TYPE_22__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_21__ {int /*<<< orphan*/  czero; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  OBJ_STREAM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int) ; 
 scalar_t__ FUNC2 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 TYPE_2__* raxNotFound ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ *) ; 
 TYPE_12__ server ; 
 TYPE_11__ shared ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_5__*,TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC10(client *c) {
    streamCG *group = NULL;
    robj *o = FUNC3(c->db,c->argv[1]);
    if (o) {
        if (FUNC2(c,o,OBJ_STREAM)) return; /* Type error. */
        group = FUNC8(o->ptr,c->argv[2]->ptr);
    }

    /* No key or group? Nothing to ack. */
    if (o == NULL || group == NULL) {
        FUNC0(c,shared.czero);
        return;
    }

    int acknowledged = 0;
    for (int j = 3; j < c->argc; j++) {
        streamID id;
        unsigned char buf[sizeof(streamID)];
        if (FUNC9(c,c->argv[j],&id,0) != C_OK) return;
        FUNC6(buf,&id);

        /* Lookup the ID in the group PEL: it will have a reference to the
         * NACK structure that will have a reference to the consumer, so that
         * we are able to remove the entry from both PELs. */
        streamNACK *nack = FUNC4(group->pel,buf,sizeof(buf));
        if (nack != raxNotFound) {
            FUNC5(group->pel,buf,sizeof(buf),NULL);
            FUNC5(nack->consumer->pel,buf,sizeof(buf),NULL);
            FUNC7(nack);
            acknowledged++;
            server.dirty++;
        }
    }
    FUNC1(c,acknowledged);
}