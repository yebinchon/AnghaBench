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
struct tls_context {int /*<<< orphan*/  ssl; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int SSL_ERROR_WANT_READ ; 
 int SSL_ERROR_WANT_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct tls_context*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct tls_context*,char const*,size_t) ; 
 struct tls_context* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int,size_t*) ; 

__attribute__((used)) static int
FUNC8(lua_State* L) {
    struct tls_context* tls_p = FUNC5(L, 1);
    size_t slen = 0;
    const char* exchange = FUNC7(L, 2, &slen);

    // check handshake is finished
    if(FUNC2(tls_p->ssl)) {
        FUNC6(L, "handshake is finished");
    }

    // handshake exchange
    if(slen > 0 && exchange != NULL) {
        FUNC4(L, tls_p, exchange, slen);
    }

    // first handshake; initiated by client
    if(!FUNC2(tls_p->ssl)) {
        int ret = FUNC0(tls_p->ssl);
        if(ret == 1) {
            return 0;
        } else if (ret < 0) {
            int err = FUNC1(tls_p->ssl, ret);
            if(err == SSL_ERROR_WANT_READ || err == SSL_ERROR_WANT_WRITE) {
                int all_read = FUNC3(L, tls_p);
                if(all_read>0) {
                    return 1;
                }
            } else {
                FUNC6(L, "SSL_do_handshake error:%d ret:%d", err, ret);
            }
        } else {
            int err = FUNC1(tls_p->ssl, ret);
            FUNC6(L, "SSL_do_handshake error:%d ret:%d", err, ret);
        }
    }
    return 0;
}