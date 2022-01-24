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
struct tls_context {int is_server; int /*<<< orphan*/  ssl; } ;
struct ssl_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tls_context*,struct ssl_ctx*) ; 

__attribute__((used)) static void
FUNC2(lua_State* L, struct tls_context* tls_p, struct ssl_ctx* ctx_p) {
    tls_p->is_server = true;
    FUNC1(L, tls_p, ctx_p);
    FUNC0(tls_p->ssl);
}