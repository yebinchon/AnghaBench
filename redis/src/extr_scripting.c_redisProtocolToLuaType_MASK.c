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
 char* FUNC0 (int /*<<< orphan*/ *,char*,char) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,char) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 

char *FUNC8(lua_State *lua, char* reply) {
    char *p = reply;

    switch(*p) {
    case ':': p = FUNC5(lua,reply); break;
    case '$': p = FUNC2(lua,reply); break;
    case '+': p = FUNC7(lua,reply); break;
    case '-': p = FUNC4(lua,reply); break;
    case '*': p = FUNC0(lua,reply,*p); break;
    case '%': p = FUNC0(lua,reply,*p); break;
    case '~': p = FUNC0(lua,reply,*p); break;
    case '_': p = FUNC6(lua,reply); break;
    case '#': p = FUNC1(lua,reply,p[1]); break;
    case ',': p = FUNC3(lua,reply); break;
    }
    return p;
}