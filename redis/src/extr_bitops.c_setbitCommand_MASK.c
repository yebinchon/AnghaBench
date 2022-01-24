#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  size_t ssize_t ;
struct TYPE_13__ {scalar_t__ ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_14__ {TYPE_3__* db; int /*<<< orphan*/ * argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_17__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_16__ {int /*<<< orphan*/  czero; int /*<<< orphan*/  cone; } ;
struct TYPE_15__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  NOTIFY_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,long*,char*) ; 
 TYPE_1__* FUNC4 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__ server ; 
 TYPE_4__ shared ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void FUNC7(client *c) {
    robj *o;
    char *err = "bit is not an integer or out of range";
    size_t bitoffset;
    ssize_t byte, bit;
    int byteval, bitval;
    long on;

    if (FUNC2(c,c->argv[2],&bitoffset,0,0) != C_OK)
        return;

    if (FUNC3(c,c->argv[3],&on,err) != C_OK)
        return;

    /* Bits can only be set or cleared... */
    if (on & ~1) {
        FUNC1(c,err);
        return;
    }

    if ((o = FUNC4(c,bitoffset)) == NULL) return;

    /* Get current values */
    byte = bitoffset >> 3;
    byteval = ((uint8_t*)o->ptr)[byte];
    bit = 7 - (bitoffset & 0x7);
    bitval = byteval & (1 << bit);

    /* Update byte with new bit value and return original value */
    byteval &= ~(1 << bit);
    byteval |= ((on & 0x1) << bit);
    ((uint8_t*)o->ptr)[byte] = byteval;
    FUNC6(c->db,c->argv[1]);
    FUNC5(NOTIFY_STRING,"setbit",c->argv[1],c->db->id);
    server.dirty++;
    FUNC0(c, bitval ? shared.cone : shared.czero);
}