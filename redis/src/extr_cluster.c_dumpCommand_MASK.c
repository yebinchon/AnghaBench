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
typedef  int /*<<< orphan*/  robj ;
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_10__ {TYPE_1__ buffer; } ;
struct TYPE_11__ {TYPE_2__ io; } ;
typedef  TYPE_3__ rio ;
struct TYPE_12__ {int /*<<< orphan*/ * argv; int /*<<< orphan*/  db; } ;
typedef  TYPE_4__ client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(client *c) {
    robj *o;
    rio payload;

    /* Check if the key is here. */
    if ((o = FUNC3(c->db,c->argv[1])) == NULL) {
        FUNC1(c);
        return;
    }

    /* Create the DUMP encoded representation. */
    FUNC2(&payload,o,c->argv[1]);

    /* Transfer to the client */
    FUNC0(c,payload.io.buffer.ptr);
    return;
}