#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; } ;
typedef  TYPE_1__ user ;
typedef  char* sds ;
typedef  int /*<<< orphan*/  listNode ;
typedef  int /*<<< orphan*/  listIter ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char*,int) ; 
 TYPE_1__* FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*,int) ; 
 char* FUNC3 () ; 
 int C_ERR ; 
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int USER_FLAG_DISABLED ; 
 int /*<<< orphan*/  UsersToLoad ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 char** FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,...) ; 

int FUNC10(void) {
    listIter li;
    listNode *ln;
    FUNC6(UsersToLoad,&li);
    while ((ln = FUNC4(&li)) != NULL) {
        sds *aclrules = FUNC5(ln);
        sds username = aclrules[0];
        user *u = FUNC0(username,FUNC7(username));
        if (!u) {
            u = FUNC1(username,FUNC7(username));
            FUNC8(u != NULL);
            FUNC2(u,"reset",-1);
        }

        /* Load every rule defined for this user. */
        for (int j = 1; aclrules[j]; j++) {
            if (FUNC2(u,aclrules[j],FUNC7(aclrules[j])) != C_OK) {
                char *errmsg = FUNC3();
                FUNC9(LL_WARNING,"Error loading ACL rule '%s' for "
                                     "the user named '%s': %s",
                          aclrules[j],aclrules[0],errmsg);
                return C_ERR;
            }
        }

        /* Having a disabled user in the configuration may be an error,
         * warn about it without returning any error to the caller. */
        if (u->flags & USER_FLAG_DISABLED) {
            FUNC9(LL_NOTICE, "The user '%s' is disabled (there is no "
                                 "'on' modifier in the user description). Make "
                                 "sure this is not a configuration error.",
                      aclrules[0]);
        }
    }
    return C_OK;
}