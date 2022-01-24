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
struct TYPE_10__ {char* ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_11__ {TYPE_1__* name; } ;
typedef  TYPE_2__ client ;
struct TYPE_12__ {int /*<<< orphan*/  ok; } ;

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (char*) ; 
 TYPE_3__ shared ; 

int FUNC5(client *c, robj *name) {
    int len = FUNC4(name->ptr);
    char *p = name->ptr;

    /* Setting the client name to an empty string actually removes
     * the current name. */
    if (len == 0) {
        if (c->name) FUNC2(c->name);
        c->name = NULL;
        FUNC0(c,shared.ok);
        return C_OK;
    }

    /* Otherwise check if the charset is ok. We need to do this otherwise
     * CLIENT LIST format will break. You should always be able to
     * split by space to get the different fields. */
    for (int j = 0; j < len; j++) {
        if (p[j] < '!' || p[j] > '~') { /* ASCII is assumed. */
            FUNC1(c,
                "Client names cannot contain spaces, "
                "newlines or special characters.");
            return C_ERR;
        }
    }
    if (c->name) FUNC2(c->name);
    c->name = name;
    FUNC3(name);
    return C_OK;
}