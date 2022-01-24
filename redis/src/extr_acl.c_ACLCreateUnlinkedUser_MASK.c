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
typedef  int /*<<< orphan*/  username ;
typedef  int /*<<< orphan*/  user ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Users ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

user *FUNC5(void) {
    char username[64];
    for (int j = 0; ; j++) {
        FUNC3(username,sizeof(username),"__fakeuser:%d__",j);
        user *fakeuser = FUNC0(username,FUNC4(username));
        if (fakeuser == NULL) continue;
        int retval = FUNC1(Users,(unsigned char*) username,
                               FUNC4(username),NULL);
        FUNC2(retval != 0);
        return fakeuser;
    }
}