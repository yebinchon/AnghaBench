#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  user ;
typedef  int /*<<< orphan*/ * sds ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int C_ERR ; 
 int C_OK ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  UsersToLoad ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ ** FUNC7 (int) ; 

int FUNC8(sds *argv, int argc, int *argc_err) {
    if (argc < 2 || FUNC6(argv[0],"user")) {
        if (argc_err) *argc_err = 0;
        return C_ERR;
    }

    /* Try to apply the user rules in a fake user to see if they
     * are actually valid. */
    user *fakeuser = FUNC0();

    for (int j = 2; j < argc; j++) {
        if (FUNC2(fakeuser,argv[j],FUNC5(argv[j])) == C_ERR) {
            if (errno != ENOENT) {
                FUNC1(fakeuser);
                if (argc_err) *argc_err = j;
                return C_ERR;
            }
        }
    }

    /* Rules look valid, let's append the user to the list. */
    sds *copy = FUNC7(sizeof(sds)*argc);
    for (int j = 1; j < argc; j++) copy[j-1] = FUNC4(argv[j]);
    copy[argc-1] = NULL;
    FUNC3(UsersToLoad,copy);
    FUNC1(fakeuser);
    return C_OK;
}