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
struct hostent {char* h_name; char** h_aliases; scalar_t__ h_addr_list; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 char* FUNC0 (struct in_addr) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(lua_State *L, struct hostent *hp)
{
    char **alias;
    struct in_addr **addr;
    int i, resolved;
    FUNC2(L); resolved = FUNC1(L);
    FUNC4(L, "name");
    FUNC4(L, hp->h_name);
    FUNC5(L, resolved);
    FUNC4(L, "ip");
    FUNC4(L, "alias");
    i = 1;
    alias = hp->h_aliases;
    FUNC2(L);
    if (alias) {
        while (*alias) {
            FUNC3(L, i);
            FUNC4(L, *alias);
            FUNC5(L, -3);
            i++; alias++;
        }
    }
    FUNC5(L, resolved);
    i = 1;
    FUNC2(L);
    addr = (struct in_addr **) hp->h_addr_list;
    if (addr) {
        while (*addr) {
            FUNC3(L, i);
            FUNC4(L, FUNC0(**addr));
            FUNC5(L, -3);
            i++; addr++;
        }
    }
    FUNC5(L, resolved);
}