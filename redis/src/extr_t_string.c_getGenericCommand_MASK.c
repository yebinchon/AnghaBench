#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ type; } ;
typedef  TYPE_1__ robj ;
struct TYPE_11__ {size_t resp; int /*<<< orphan*/ * argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_12__ {int /*<<< orphan*/  wrongtypeerr; int /*<<< orphan*/ * null; } ;

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 scalar_t__ OBJ_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ shared ; 

int FUNC3(client *c) {
    robj *o;

    if ((o = FUNC2(c,c->argv[1],shared.null[c->resp])) == NULL)
        return C_OK;

    if (o->type != OBJ_STRING) {
        FUNC0(c,shared.wrongtypeerr);
        return C_ERR;
    } else {
        FUNC1(c,o);
        return C_OK;
    }
}