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
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct tls_context*) ; 
 struct tls_context* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,size_t*) ; 

__attribute__((used)) static int
FUNC7(lua_State* L) {
    struct tls_context* tls_p = FUNC3(L, 1);
    size_t slen = 0;
    char* unencrypted_data = (char*)FUNC6(L, 2, &slen);

    while(slen > 0) {
        int written = FUNC1(tls_p->ssl, unencrypted_data,  slen);
        if(written <= 0) {
            int err = FUNC0(tls_p->ssl, written);
            FUNC4(L, "SSL_write error:%d", err);
        }else if(written <= slen) {
            unencrypted_data += written;
            slen -= written;
        }else {
            FUNC4(L, "invalid SSL_write:%d", written);
        }
    }

    int all_read = FUNC2(L, tls_p);
    if(all_read <= 0) {
        FUNC5(L, "");
    }
    return 1;
}