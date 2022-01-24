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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int /*<<< orphan*/ * FUNC0 (int,void const*,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(lua_State *L) {
	size_t sz = 0;
	const uint8_t * addr = (const uint8_t *)FUNC1(L, 1, &sz);
	uint16_t port = 0;
	FUNC5(&port, addr+1, sizeof(uint16_t));
	port = FUNC6(port);
	const void * src = addr+3;
	char tmp[256];
	int family;
	if (sz == 1+2+4) {
		family = AF_INET;
	} else {
		if (sz != 1+2+16) {
			return FUNC2(L, "Invalid udp address");
		}
		family = AF_INET6;
	}
	if (FUNC0(family, src, tmp, sizeof(tmp)) == NULL) {
		return FUNC2(L, "Invalid udp address");
	}
	FUNC4(L, tmp);
	FUNC3(L, port);
	return 2;
}