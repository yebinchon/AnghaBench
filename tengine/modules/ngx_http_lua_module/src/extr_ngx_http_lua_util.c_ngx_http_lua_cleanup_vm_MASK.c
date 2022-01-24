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
struct TYPE_4__ {scalar_t__ count; int /*<<< orphan*/ * vm; } ;
typedef  TYPE_1__ ngx_http_lua_vm_state_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* ngx_cycle ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

void
FUNC5(void *data)
{
    lua_State                       *L;
    ngx_http_lua_vm_state_t         *state = data;

#if (DDEBUG)
    if (state) {
        dd("cleanup VM: c:%d, s:%p", (int) state->count, state->vm);
    }
#endif

    if (state) {
        FUNC4(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                       "lua decrementing the reference count for Lua VM: %i",
                       state->count);

        if (--state->count == 0) {
            L = state->vm;
            FUNC3(L);
            FUNC4(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                           "lua close the global Lua VM %p", L);
            FUNC1(L);
            FUNC2(state);
        }
    }
}