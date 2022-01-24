#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_8__ {int argc; int /*<<< orphan*/ ** argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {int /*<<< orphan*/  ok; int /*<<< orphan*/  syntaxerr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ C_OK ; 
 TYPE_6__* DefaultUser ; 
 int USER_FLAG_NOPASS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__ shared ; 

void FUNC5(client *c) {
    /* Only two or three argument forms are allowed. */
    if (c->argc > 3) {
        FUNC1(c,shared.syntaxerr);
        return;
    }

    /* Handle the two different forms here. The form with two arguments
     * will just use "default" as username. */
    robj *username, *password;
    if (c->argc == 2) {
        /* Mimic the old behavior of giving an error for the two commands
         * from if no password is configured. */
        if (DefaultUser->flags & USER_FLAG_NOPASS) {
            FUNC2(c,"AUTH <password> called without any password "
                            "configured for the default user. Are you sure "
                            "your configuration is correct?");
            return;
        }

        username = FUNC3("default",7);
        password = c->argv[1];
    } else {
        username = c->argv[1];
        password = c->argv[2];
    }

    if (FUNC0(c,username,password) == C_OK) {
        FUNC1(c,shared.ok);
    } else {
        FUNC2(c,"-WRONGPASS invalid username-password pair");
    }

    /* Free the "default" string object we created for the two
     * arguments form. */
    if (c->argc == 2) FUNC4(username);
}