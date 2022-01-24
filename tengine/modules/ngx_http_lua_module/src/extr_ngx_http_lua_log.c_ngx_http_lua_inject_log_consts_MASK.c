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

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_LOG_CRIT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 int /*<<< orphan*/  NGX_LOG_NOTICE ; 
 int /*<<< orphan*/  NGX_LOG_STDERR ; 
 int /*<<< orphan*/  NGX_LOG_WARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static void
FUNC2(lua_State *L)
{
    /* {{{ nginx log level constants */
    FUNC0(L, NGX_LOG_STDERR);
    FUNC1(L, -2, "STDERR");

    FUNC0(L, NGX_LOG_EMERG);
    FUNC1(L, -2, "EMERG");

    FUNC0(L, NGX_LOG_ALERT);
    FUNC1(L, -2, "ALERT");

    FUNC0(L, NGX_LOG_CRIT);
    FUNC1(L, -2, "CRIT");

    FUNC0(L, NGX_LOG_ERR);
    FUNC1(L, -2, "ERR");

    FUNC0(L, NGX_LOG_WARN);
    FUNC1(L, -2, "WARN");

    FUNC0(L, NGX_LOG_NOTICE);
    FUNC1(L, -2, "NOTICE");

    FUNC0(L, NGX_LOG_INFO);
    FUNC1(L, -2, "INFO");

    FUNC0(L, NGX_LOG_DEBUG);
    FUNC1(L, -2, "DEBUG");
    /* }}} */
}