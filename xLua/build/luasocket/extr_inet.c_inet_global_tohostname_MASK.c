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
struct hostent {int /*<<< orphan*/  h_name; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int IO_DONE ; 
 int FUNC0 (char const*,struct hostent**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct hostent*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(lua_State *L) {
    const char *address = FUNC2(L, 1);
    struct hostent *hp = NULL;
    int err = FUNC0(address, &hp);
    if (err != IO_DONE) {
        FUNC3(L);
        FUNC4(L, FUNC5(err));
        return 2;
    }
    FUNC4(L, hp->h_name);
    FUNC1(L, hp);
    return 2;
}