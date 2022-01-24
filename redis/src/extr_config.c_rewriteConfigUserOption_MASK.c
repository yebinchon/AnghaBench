#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ user ;
struct rewriteConfigState {int dummy; } ;
typedef  int /*<<< orphan*/  sds ;
struct TYPE_10__ {TYPE_1__* data; } ;
typedef  TYPE_2__ raxIterator ;
struct TYPE_11__ {char* acl_filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  Users ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct rewriteConfigState*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct rewriteConfigState*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 TYPE_3__ server ; 

void FUNC11(struct rewriteConfigState *state) {
    /* If there is a user file defined we just mark this configuration
     * directive as processed, so that all the lines containing users
     * inside the config file gets discarded. */
    if (server.acl_filename[0] != '\0') {
        FUNC5(state,"user");
        return;
    }

    /* Otherwise scan the list of users and rewrite every line. Note that
     * in case the list here is empty, the effect will just be to comment
     * all the users directive inside the config file. */
    raxIterator ri;
    FUNC3(&ri,Users);
    FUNC2(&ri,"^",NULL,0);
    while(FUNC1(&ri)) {
        user *u = ri.data;
        sds line = FUNC10("user ");
        line = FUNC8(line,u->name);
        line = FUNC7(line," ",1);
        sds descr = FUNC0(u);
        line = FUNC8(line,descr);
        FUNC9(descr);
        FUNC6(state,"user",line,1);
    }
    FUNC4(&ri);

    /* Mark "user" as processed in case there are no defined users. */
    FUNC5(state,"user");
}