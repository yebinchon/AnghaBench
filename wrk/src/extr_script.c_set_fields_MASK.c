#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int type; scalar_t__ name; int /*<<< orphan*/ * value; } ;
typedef  TYPE_1__ table_field ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  lua_Integer ;
typedef  int /*<<< orphan*/  lua_CFunction ;

/* Variables and functions */
#define  LUA_TFUNCTION 131 
#define  LUA_TNIL 130 
#define  LUA_TNUMBER 129 
#define  LUA_TSTRING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(lua_State *L, int index, const table_field *fields) {
    for (int i = 0; fields[i].name; i++) {
        table_field f = fields[i];
        switch (f.value == NULL ? LUA_TNIL : f.type) {
            case LUA_TFUNCTION:
                FUNC0(L, (lua_CFunction) f.value);
                break;
            case LUA_TNUMBER:
                FUNC1(L, *((lua_Integer *) f.value));
                break;
            case LUA_TSTRING:
                FUNC3(L, (const char *) f.value);
                break;
            case LUA_TNIL:
                FUNC2(L);
                break;
        }
        FUNC4(L, index, f.name);
    }
}