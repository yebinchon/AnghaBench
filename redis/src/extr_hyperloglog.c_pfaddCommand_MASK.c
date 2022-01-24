#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct hllhdr {int dummy; } ;
struct TYPE_25__ {struct hllhdr* ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_26__ {int argc; TYPE_3__* db; TYPE_4__** argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_30__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_29__ {int /*<<< orphan*/  czero; int /*<<< orphan*/  cone; } ;
struct TYPE_28__ {scalar_t__ ptr; } ;
struct TYPE_27__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  FUNC0 (struct hllhdr*) ; 
 int /*<<< orphan*/  NOTIFY_STRING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*,TYPE_1__*) ; 
 TYPE_1__* FUNC5 (TYPE_3__*,TYPE_4__*,TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  invalid_hll_err ; 
 scalar_t__ FUNC7 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_1__* FUNC8 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_6__ server ; 
 TYPE_5__ shared ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,TYPE_4__*) ; 

void FUNC13(client *c) {
    robj *o = FUNC8(c->db,c->argv[1]);
    struct hllhdr *hdr;
    int updated = 0, j;

    if (o == NULL) {
        /* Create the key with a string value of the exact length to
         * hold our HLL data structure. sdsnewlen() when NULL is passed
         * is guaranteed to return bytes initialized to zero. */
        o = FUNC3();
        FUNC4(c->db,c->argv[1],o);
        updated++;
    } else {
        if (FUNC7(c,o) != C_OK) return;
        o = FUNC5(c->db,c->argv[1],o);
    }
    /* Perform the low level ADD operation for every element. */
    for (j = 2; j < c->argc; j++) {
        int retval = FUNC6(o, (unsigned char*)c->argv[j]->ptr,
                               FUNC10(c->argv[j]->ptr));
        switch(retval) {
        case 1:
            updated++;
            break;
        case -1:
            FUNC2(c,FUNC11(invalid_hll_err));
            return;
        }
    }
    hdr = o->ptr;
    if (updated) {
        FUNC12(c->db,c->argv[1]);
        FUNC9(NOTIFY_STRING,"pfadd",c->argv[1],c->db->id);
        server.dirty++;
        FUNC0(hdr);
    }
    FUNC1(c, updated ? shared.cone : shared.czero);
}