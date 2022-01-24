#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct TYPE_6__ {TYPE_1__ method_name; } ;
typedef  TYPE_2__ ngx_http_request_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(lua_State *L)
{
    int                      n;
    ngx_http_request_t      *r;

    n = FUNC1(L);
    if (n != 0) {
        return FUNC0(L, "only one argument expected but got %d", n);
    }

    r = FUNC4(L);
    if (r == NULL) {
        return FUNC0(L, "request object not found");
    }

    FUNC3(L, r);

    FUNC2(L, (char *) r->method_name.data, r->method_name.len);
    return 1;
}