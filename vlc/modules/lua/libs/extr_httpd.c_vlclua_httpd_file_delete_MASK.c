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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  httpd_file_t ;
struct TYPE_4__ {int /*<<< orphan*/  ref; int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ httpd_file_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4( lua_State *L )
{
    httpd_file_t **pp_file = (httpd_file_t**)FUNC2( L, 1, "httpd_file" );
    httpd_file_sys_t *p_sys = FUNC1( *pp_file );
    FUNC3( p_sys->L, LUA_REGISTRYINDEX, p_sys->ref );
    FUNC0( p_sys );
    return 0;
}