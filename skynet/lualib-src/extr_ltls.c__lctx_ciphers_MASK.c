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
struct ssl_ctx {int /*<<< orphan*/  ctx; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 struct ssl_ctx* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC4(lua_State* L) {
    struct ssl_ctx* ctx_p = FUNC1(L, 1);
    const char* s = FUNC3(L, 2);
    if(!s) {
        FUNC2(L, "need cipher list");
    }
    int ret = FUNC0(ctx_p->ctx, s);
    if(ret != 0) {
        FUNC2(L, "SSL_CTX_set_tlsext_use_srtp error:%d", ret);
    }
    return 0;
}