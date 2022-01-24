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
struct tls_context {int /*<<< orphan*/  out_bio; } ;
typedef  int /*<<< orphan*/  outbuff ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(lua_State* L, struct tls_context* tls_p) {
    char outbuff[4096];
    int all_read = 0;
    int read = 0;
    int pending = FUNC0(tls_p->out_bio);
    if(pending >0) {
        luaL_Buffer b;
        FUNC3(L, &b);
        while(pending > 0) {
            read = FUNC1(tls_p->out_bio, outbuff, sizeof(outbuff));
            // printf("BIO_read read:%d pending:%d\n", read, pending);
            if(read <= 0) {
                FUNC4(L, "BIO_read error:%d", read);
            }else if(read <= sizeof(outbuff)) {
                all_read += read;
                FUNC2(&b, (const char*)outbuff, read);
            }else {
                FUNC4(L, "invalid BIO_read:%d", read);
            }
            pending = FUNC0(tls_p->out_bio);
        }
        if(all_read>0) {
            FUNC5(&b);
        }
    }
    return all_read;
}