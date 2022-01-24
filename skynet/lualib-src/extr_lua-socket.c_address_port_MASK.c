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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 char* FUNC4 (char const*,char) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static const char *
FUNC6(lua_State *L, char *tmp, const char * addr, int port_index, int *port) {
	const char * host;
	if (FUNC2(L,port_index)) {
		host = FUNC4(addr, '[');
		if (host) {
			// is ipv6
			++host;
			const char * sep = FUNC4(addr,']');
			if (sep == NULL) {
				FUNC0(L, "Invalid address %s.",addr);
			}
			FUNC3(tmp, host, sep-host);
			tmp[sep-host] = '\0';
			host = tmp;
			sep = FUNC4(sep + 1, ':');
			if (sep == NULL) {
				FUNC0(L, "Invalid address %s.",addr);
			}
			*port = FUNC5(sep+1,NULL,10);
		} else {
			// is ipv4
			const char * sep = FUNC4(addr,':');
			if (sep == NULL) {
				FUNC0(L, "Invalid address %s.",addr);
			}
			FUNC3(tmp, addr, sep-addr);
			tmp[sep-addr] = '\0';
			host = tmp;
			*port = FUNC5(sep+1,NULL,10);
		}
	} else {
		host = addr;
		*port = FUNC1(L,port_index, 0);
	}
	return host;
}