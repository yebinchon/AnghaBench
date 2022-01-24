#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; int /*<<< orphan*/  patterns; int /*<<< orphan*/  passwords; } ;
typedef  TYPE_1__ user ;
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_6__ {int flag; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_2__* ACLUserFlags ; 
 int USER_FLAG_ALLCOMMANDS ; 
 int USER_FLAG_ALLKEYS ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

sds FUNC9(user *u) {
    sds res = FUNC7();

    /* Flags. */
    for (int j = 0; ACLUserFlags[j].flag; j++) {
        /* Skip the allcommands and allkeys flags because they'll be emitted
         * later as ~* and +@all. */
        if (ACLUserFlags[j].flag == USER_FLAG_ALLKEYS ||
            ACLUserFlags[j].flag == USER_FLAG_ALLCOMMANDS) continue;
        if (u->flags & ACLUserFlags[j].flag) {
            res = FUNC4(res,ACLUserFlags[j].name);
            res = FUNC5(res," ",1);
        }
    }

    /* Passwords. */
    listIter li;
    listNode *ln;
    FUNC3(u->passwords,&li);
    while((ln = FUNC1(&li))) {
        sds thispass = FUNC2(ln);
        res = FUNC5(res,"#",1);
        res = FUNC6(res,thispass);
        res = FUNC5(res," ",1);
    }

    /* Key patterns. */
    if (u->flags & USER_FLAG_ALLKEYS) {
        res = FUNC5(res,"~* ",3);
    } else {
        FUNC3(u->patterns,&li);
        while((ln = FUNC1(&li))) {
            sds thispat = FUNC2(ln);
            res = FUNC5(res,"~",1);
            res = FUNC6(res,thispat);
            res = FUNC5(res," ",1);
        }
    }

    /* Command rules. */
    sds rules = FUNC0(u);
    res = FUNC6(res,rules);
    FUNC8(rules);
    return res;
}