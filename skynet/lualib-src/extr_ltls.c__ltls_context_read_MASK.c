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
typedef  int /*<<< orphan*/  outbuff ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 int SSL_ERROR_WANT_READ ; 
 int SSL_ERROR_WANT_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct tls_context*,char const*,size_t) ; 
 struct tls_context* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int,size_t*) ; 

__attribute__((used)) static int
FUNC9(lua_State* L) {
    struct tls_context* tls_p = FUNC3(L, 1);
    size_t slen = 0;
    const char* encrypted_data = FUNC8(L, 2, &slen);

    // write encrypted data
    if(slen>0 && encrypted_data) {
        FUNC2(L, tls_p, encrypted_data, slen);
    }

    char outbuff[4096];
    int read = 0;
    luaL_Buffer b;
    FUNC5(L, &b);

    do {
        read = FUNC1(tls_p->ssl, outbuff, sizeof(outbuff));
        if(read <= 0) {
            int err = FUNC0(tls_p->ssl, read);
            if(err == SSL_ERROR_WANT_READ || err == SSL_ERROR_WANT_WRITE) {
                break;
            }
            FUNC6(L, "SSL_read error:%d", err);
        }else if(read <= sizeof(outbuff)) {
            FUNC4(&b, outbuff, read);
        }else {
            FUNC6(L, "invalid SSL_read:%d", read);
        }
    }while(true);
    FUNC7(&b);
    return 1;
}