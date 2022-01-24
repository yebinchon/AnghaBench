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
struct tls_context {int is_close; } ;
struct ssl_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {char* member_0; int /*<<< orphan*/ * member_1; } ;
typedef  TYPE_1__ luaL_Reg ;

/* Variables and functions */
 struct ssl_ctx* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tls_context*,struct ssl_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct tls_context*,struct ssl_ctx*) ; 
 int /*<<< orphan*/ * _ltls_context_close ; 
 int /*<<< orphan*/ * _ltls_context_finished ; 
 int /*<<< orphan*/ * _ltls_context_handshake ; 
 int /*<<< orphan*/ * _ltls_context_read ; 
 int /*<<< orphan*/ * _ltls_context_write ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (char const*,char*) ; 

__attribute__((used)) static int
FUNC14(lua_State* L) {
    struct tls_context* tls_p = (struct tls_context*)FUNC7(L, sizeof(*tls_p));
    tls_p->is_close = false;
    const char* method = FUNC6(L, 1, "nil");
    struct ssl_ctx* ctx_p = FUNC0(L, 2);
    FUNC9(L, 2);
    FUNC12(L, -2); // set ssl_ctx associated to tls_context

    if(FUNC13(method, "client") == 0) {
        FUNC1(L, tls_p, ctx_p);
    }else if(FUNC13(method, "server") == 0) {
        FUNC2(L, tls_p, ctx_p);
    } else {
        FUNC3(L, "invalid method:%s e.g[server, client]", method);
    }

    if(FUNC5(L, "_TLS_CONTEXT_METATABLE_")) {
        luaL_Reg l[] = {
            {"close", _ltls_context_close},
            {"finished", _ltls_context_finished},
            {"handshake", _ltls_context_handshake},
            {"read", _ltls_context_read},
            {"write", _ltls_context_write},
            {NULL, NULL},
        };
        FUNC4(L, l);
        FUNC10(L, -2, "__index");
        FUNC8(L, _ltls_context_close);
        FUNC10(L, -2, "__gc");
    }
    FUNC11(L, -2);
    return 1;
}