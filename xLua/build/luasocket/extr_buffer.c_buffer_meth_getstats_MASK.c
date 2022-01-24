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
typedef  TYPE_1__* p_buffer ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  scalar_t__ lua_Number ;
struct TYPE_3__ {scalar_t__ birthday; scalar_t__ sent; scalar_t__ received; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 

int FUNC2(lua_State *L, p_buffer buf) {
    FUNC0(L, (lua_Number) buf->received);
    FUNC0(L, (lua_Number) buf->sent);
    FUNC0(L, FUNC1() - buf->birthday);
    return 3;
}