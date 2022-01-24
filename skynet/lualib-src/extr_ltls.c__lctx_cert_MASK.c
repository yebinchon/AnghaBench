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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_FILETYPE_PEM ; 
 struct ssl_ctx* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC6(lua_State* L) {
    struct ssl_ctx* ctx_p = FUNC3(L, 1);
    const char* certfile = FUNC5(L, 2);
    const char* key = FUNC5(L, 3);
    if(!certfile) {
        FUNC4(L, "need certfile");
    }

    if(!key) {
        FUNC4(L, "need private key");
    }

    int ret = FUNC2(ctx_p->ctx, certfile, SSL_FILETYPE_PEM);
    if(ret != 1) {
        FUNC4(L, "SSL_CTX_use_certificate_file error:%d", ret);
    }

    ret = FUNC1(ctx_p->ctx, key, SSL_FILETYPE_PEM);
    if(ret != 1) {
        FUNC4(L, "SSL_CTX_use_PrivateKey_file error:%d", ret);
    }
    ret = FUNC0(ctx_p->ctx);
    if(ret != 1) {
        FUNC4(L, "SSL_CTX_check_private_key error:%d", ret);
    }
    return 0;
}