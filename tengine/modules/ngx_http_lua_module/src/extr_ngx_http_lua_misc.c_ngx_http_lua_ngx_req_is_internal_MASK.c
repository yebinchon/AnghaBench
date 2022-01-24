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
struct TYPE_3__ {int internal; } ;
typedef  TYPE_1__ ngx_http_request_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(lua_State *L)
{
    ngx_http_request_t  *r;

    r = FUNC2(L);
    if (r == NULL) {
        return FUNC0(L, "no request object found");
    }

    FUNC1(L, r->internal == 1);
    return 1;
}