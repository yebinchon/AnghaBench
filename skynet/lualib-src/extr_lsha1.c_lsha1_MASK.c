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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  SHA1_CTX ;

/* Variables and functions */
 int SHA1_DIGEST_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

int
FUNC5(lua_State *L) {
	size_t sz = 0;
	const uint8_t * buffer = (const uint8_t *)FUNC0(L, 1, &sz);
	uint8_t digest[SHA1_DIGEST_SIZE];
	SHA1_CTX ctx;
	FUNC3(&ctx);
	FUNC4(&ctx, buffer, sz);
	FUNC2(&ctx, digest);
	FUNC1(L, (const char *)digest, SHA1_DIGEST_SIZE);

	return 1;
}