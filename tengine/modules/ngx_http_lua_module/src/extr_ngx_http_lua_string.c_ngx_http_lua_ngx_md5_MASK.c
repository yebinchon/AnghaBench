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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_md5_t ;
typedef  int /*<<< orphan*/  md5_buf ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  hex_buf ;

/* Variables and functions */
 int MD5_DIGEST_LENGTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC9(lua_State *L)
{
    u_char                  *src;
    size_t                   slen;

    ngx_md5_t                md5;
    u_char                   md5_buf[MD5_DIGEST_LENGTH];
    u_char                   hex_buf[2 * sizeof(md5_buf)];

    if (FUNC2(L) != 1) {
        return FUNC1(L, "expecting one argument");
    }

    if (FUNC3(L, 1)) {
        src = (u_char *) "";
        slen = 0;

    } else {
        src = (u_char *) FUNC0(L, 1, &slen);
    }

    FUNC7(&md5);
    FUNC8(&md5, src, slen);
    FUNC6(md5_buf, &md5);

    FUNC5(hex_buf, md5_buf, sizeof(md5_buf));

    FUNC4(L, (char *) hex_buf, sizeof(hex_buf));

    return 1;
}