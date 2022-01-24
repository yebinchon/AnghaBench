#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_9__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char*** allowed_subcommands; int /*<<< orphan*/  allowed_commands; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ user ;
struct redisCommand {size_t id; char* name; } ;
typedef  char* sds ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_12__ {scalar_t__ flag; char* name; } ;
struct TYPE_11__ {int /*<<< orphan*/  orig_commands; } ;

/* Variables and functions */
 TYPE_9__* ACLCommandCategories ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned long*,unsigned long*,char*) ; 
 int FUNC1 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 struct redisCommand* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC10 (char*,char*) ; 
 char* FUNC11 (char*,char*,int) ; 
 char* FUNC12 (char*,char*) ; 
 char* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 char* FUNC15 (char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

sds FUNC19(user *u) {
    sds rules = FUNC13();
    int additive;   /* If true we start from -@all and add, otherwise if
                       false we start from +@all and remove. */

    /* This code is based on a trick: as we generate the rules, we apply
     * them to a fake user, so that as we go we still know what are the
     * bit differences we should try to address by emitting more rules. */
    user fu = {0};
    user *fakeuser = &fu;

    /* Here we want to understand if we should start with +@all and remove
     * the commands corresponding to the bits that are not set in the user
     * commands bitmap, or the contrary. Note that semantically the two are
     * different. For instance starting with +@all and subtracting, the user
     * will be able to execute future commands, while -@all and adding will just
     * allow the user the run the selected commands and/or categories.
     * How do we test for that? We use the trick of a reserved command ID bit
     * that is set only by +@all (and its alias "allcommands"). */
    if (FUNC4(u)) {
        additive = 0;
        rules = FUNC10(rules,"+@all ");
        FUNC2(fakeuser,"+@all",-1);
    } else {
        additive = 1;
        rules = FUNC10(rules,"-@all ");
        FUNC2(fakeuser,"-@all",-1);
    }

    /* Try to add or subtract each category one after the other. Often a
     * single category will not perfectly match the set of commands into
     * it, so at the end we do a final pass adding/removing the single commands
     * needed to make the bitmap exactly match. */
    for (int j = 0; ACLCommandCategories[j].flag != 0; j++) {
        unsigned long on, off;
        FUNC0(u,&on,&off,ACLCommandCategories[j].name);
        if ((additive && on > off) || (!additive && off > on)) {
            sds op = FUNC15(additive ? "+@" : "-@", 2);
            op = FUNC10(op,ACLCommandCategories[j].name);
            FUNC2(fakeuser,op,-1);
            rules = FUNC12(rules,op);
            rules = FUNC11(rules," ",1);
            FUNC14(op);
        }
    }

    /* Fix the final ACLs with single commands differences. */
    dictIterator *di = FUNC5(server.orig_commands);
    dictEntry *de;
    while ((de = FUNC7(di)) != NULL) {
        struct redisCommand *cmd = FUNC6(de);
        int userbit = FUNC1(u,cmd->id);
        int fakebit = FUNC1(fakeuser,cmd->id);
        if (userbit != fakebit) {
            rules = FUNC11(rules, userbit ? "+" : "-", 1);
            rules = FUNC10(rules,cmd->name);
            rules = FUNC11(rules," ",1);
            FUNC3(fakeuser,cmd->id,userbit);
        }

        /* Emit the subcommands if there are any. */
        if (userbit == 0 && u->allowed_subcommands &&
            u->allowed_subcommands[cmd->id])
        {
            for (int j = 0; u->allowed_subcommands[cmd->id][j]; j++) {
                rules = FUNC11(rules,"+",1);
                rules = FUNC10(rules,cmd->name);
                rules = FUNC11(rules,"|",1);
                rules = FUNC12(rules,u->allowed_subcommands[cmd->id][j]);
                rules = FUNC11(rules," ",1);
            }
        }
    }
    FUNC8(di);

    /* Trim the final useless space. */
    FUNC16(rules,0,-2);

    /* This is technically not needed, but we want to verify that now the
     * predicted bitmap is exactly the same as the user bitmap, and abort
     * otherwise, because aborting is better than a security risk in this
     * code path. */
    if (FUNC9(fakeuser->allowed_commands,
                        u->allowed_commands,
                        sizeof(u->allowed_commands)) != 0)
    {
        FUNC17(LL_WARNING,
            "CRITICAL ERROR: User ACLs don't match final bitmap: '%s'",
            rules);
        FUNC18("No bitmap match in ACLDescribeUserCommandRules()");
    }
    return rules;
}