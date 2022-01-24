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
struct ssl_ctx {int /*<<< orphan*/  ctx; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {char* member_0; int /*<<< orphan*/ * member_1; } ;
typedef  TYPE_1__ luaL_Reg ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,char*,int) ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * _lctx_cert ; 
 int /*<<< orphan*/ * _lctx_ciphers ; 
 int /*<<< orphan*/  _lctx_gc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC11(lua_State* L) {
    struct ssl_ctx* ctx_p = (struct ssl_ctx*)FUNC7(L, sizeof(*ctx_p));
    ctx_p->ctx = FUNC2(FUNC3());
    if(!ctx_p->ctx) {
        unsigned int err = FUNC1();
        char buf[256];
        FUNC0(err, buf, sizeof(buf));
        FUNC4(L, "SSL_CTX_new client faild. %s\n", buf);
    }

    if(FUNC6(L, "_TLS_SSLCTX_METATABLE_")) {
        luaL_Reg l[] = {
            {"set_ciphers", _lctx_ciphers},
            {"set_cert", _lctx_cert},
            {NULL, NULL},
        };

        FUNC5(L, l);
        FUNC9(L, -2, "__index");
        FUNC8(L, _lctx_gc);
        FUNC9(L, -2, "__gc");
    }
    FUNC10(L, -2);
    return 1;
}