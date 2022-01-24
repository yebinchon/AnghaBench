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
struct tls_context {void* out_bio; void* in_bio; int /*<<< orphan*/  ssl; } ;
struct ssl_ctx {int /*<<< orphan*/  ctx; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC6(lua_State* L, struct tls_context* tls_p, struct ssl_ctx* ctx_p) {
    tls_p->ssl = FUNC3(ctx_p->ctx);
    if(!tls_p->ssl) {
        FUNC5(L, "SSL_new faild");
    }

    tls_p->in_bio = FUNC0(FUNC1());
    if(!tls_p->in_bio) {
        FUNC5(L, "new in bio faild");
    }
    FUNC2(tls_p->in_bio, -1); /* see: https://www.openssl.org/docs/crypto/BIO_s_mem.html */

    tls_p->out_bio = FUNC0(FUNC1());
    if(!tls_p->out_bio) {
        FUNC5(L, "new out bio faild");
    }
    FUNC2(tls_p->out_bio, -1); /* see: https://www.openssl.org/docs/crypto/BIO_s_mem.html */

    FUNC4(tls_p->ssl, tls_p->in_bio, tls_p->out_bio);
}