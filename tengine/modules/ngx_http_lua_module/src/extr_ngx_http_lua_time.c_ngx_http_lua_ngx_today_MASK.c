#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ time_t ;
struct TYPE_4__ {int /*<<< orphan*/  ngx_tm_mday; int /*<<< orphan*/  ngx_tm_mon; int /*<<< orphan*/  ngx_tm_year; } ;
typedef  TYPE_1__ ngx_tm_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_5__ {int gmtoff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_3__* ngx_cached_time ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static int
FUNC4(lua_State *L)
{
    time_t                   now;
    ngx_tm_t                 tm;
    u_char                   buf[sizeof("2010-11-19") - 1];

    now = FUNC3();
    FUNC1(now + ngx_cached_time->gmtoff * 60, &tm);

    FUNC2(buf, "%04d-%02d-%02d", tm.ngx_tm_year, tm.ngx_tm_mon,
                tm.ngx_tm_mday);

    FUNC0(L, (char *) buf, sizeof(buf));

    return 1;
}