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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,long long) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,long long*) ; 

char *FUNC4(lua_State *lua, char *reply) {
    char *p = FUNC2(reply+1,'\r');
    long long bulklen;

    FUNC3(reply+1,p-reply-1,&bulklen);
    if (bulklen == -1) {
        FUNC0(lua,0);
        return p+2;
    } else {
        FUNC1(lua,p+2,bulklen);
        return p+2+bulklen+2;
    }
}