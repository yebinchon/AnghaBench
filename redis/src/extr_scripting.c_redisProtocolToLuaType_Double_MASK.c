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
 int MAX_LONG_DOUBLE_CHARS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 char* FUNC5 (char*,char) ; 
 double FUNC6 (char*,int /*<<< orphan*/ *) ; 

char *FUNC7(lua_State *lua, char *reply) {
    char *p = FUNC5(reply+1,'\r');
    char buf[MAX_LONG_DOUBLE_CHARS+1];
    size_t len = p-reply-1;
    double d;

    if (len <= MAX_LONG_DOUBLE_CHARS) {
        FUNC4(buf,reply+1,len);
        buf[len] = '\0';
        d = FUNC6(buf,NULL); /* We expect a valid representation. */
    } else {
        d = 0;
    }

    FUNC0(lua);
    FUNC2(lua,"double");
    FUNC1(lua,d);
    FUNC3(lua,-3);
    return p+2;
}