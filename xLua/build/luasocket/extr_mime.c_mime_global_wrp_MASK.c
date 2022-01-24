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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  luaL_Buffer ;
typedef  int UC ;

/* Variables and functions */
 int /*<<< orphan*/  CRLF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(lua_State *L)
{
    size_t size = 0;
    int left = (int) FUNC3(L, 1);
    const UC *input = (UC *) FUNC4(L, 2, NULL, &size);
    const UC *last = input + size;
    int length = (int) FUNC5(L, 3, 76);
    luaL_Buffer buffer;
    /* end of input black-hole */
    if (!input) {
        /* if last line has not been terminated, add a line break */
        if (left < length) FUNC9(L, CRLF);
        /* otherwise, we are done */
        else FUNC7(L);
        FUNC8(L, length);
        return 2;
    } 
    FUNC2(L, &buffer);
    while (input < last) {
        switch (*input) {
            case '\r':
                break;
            case '\n':
                FUNC1(&buffer, CRLF);
                left = length;
                break;
            default:
                if (left <= 0) {
                    left = length;
                    FUNC1(&buffer, CRLF);
                }
                FUNC0(&buffer, *input);
                left--;
                break;
        }
        input++;
    }
    FUNC6(&buffer);
    FUNC8(L, left);
    return 2;
}