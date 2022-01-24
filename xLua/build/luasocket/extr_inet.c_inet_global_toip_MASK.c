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
struct in_addr {int dummy; } ;
struct hostent {scalar_t__ h_addr; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int IO_DONE ; 
 int FUNC0 (char const*,struct hostent**) ; 
 int /*<<< orphan*/  FUNC1 (struct in_addr) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct hostent*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(lua_State *L)
{
    const char *address = FUNC3(L, 1);
    struct hostent *hp = NULL;
    int err = FUNC0(address, &hp);
    if (err != IO_DONE) {
        FUNC4(L);
        FUNC5(L, FUNC6(err));
        return 2;
    }
    FUNC5(L, FUNC1(*((struct in_addr *) hp->h_addr)));
    FUNC2(L, hp);
    return 2;
}