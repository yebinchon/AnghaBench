#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int http_version; } ;
typedef  TYPE_1__ ngx_http_request_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
#define  NGX_HTTP_VERSION_10 131 
#define  NGX_HTTP_VERSION_11 130 
#define  NGX_HTTP_VERSION_20 129 
#define  NGX_HTTP_VERSION_9 128 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(lua_State *L)
{
    ngx_http_request_t          *r;

    r = FUNC4(L);
    if (r == NULL) {
        return FUNC0(L, "no request object found");
    }

    FUNC3(L, r);

    switch (r->http_version) {
    case NGX_HTTP_VERSION_9:
        FUNC2(L, 0.9);
        break;

    case NGX_HTTP_VERSION_10:
        FUNC2(L, 1.0);
        break;

    case NGX_HTTP_VERSION_11:
        FUNC2(L, 1.1);
        break;

#ifdef NGX_HTTP_VERSION_20
    case NGX_HTTP_VERSION_20:
        FUNC2(L, 2.0);
        break;
#endif

    default:
        FUNC1(L);
        break;
    }

    return 1;
}