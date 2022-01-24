#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* addr; } ;
typedef  TYPE_1__ thread ;
struct addrinfo {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_7__ {int /*<<< orphan*/  ai_addr; } ;

/* Variables and functions */
 struct addrinfo* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC9(lua_State *L) {
    thread *t = FUNC1(L);
    const char *key = FUNC4(L, -2);
    if (!FUNC6("addr", key)) {
        struct addrinfo *addr = FUNC0(L);
        if (t->addr) FUNC7(t->addr->ai_addr);
        t->addr = FUNC8(t->addr, sizeof(*addr));
        FUNC5(addr, t->addr);
    } else {
        FUNC2(L, "cannot set '%s' on thread", FUNC3(L, -1));
    }
    return 0;
}