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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  torch_Generator ; 
 int /*<<< orphan*/  torch_Generator_factory ; 
 int /*<<< orphan*/  torch_Generator_free ; 
 int /*<<< orphan*/  torch_Generator_new ; 
 int /*<<< orphan*/  torch_Generator_table_ ; 

void FUNC3(lua_State *L)
{
  FUNC0(L, torch_Generator, NULL,
                    torch_Generator_new, torch_Generator_free, torch_Generator_factory);
  FUNC1(L, torch_Generator_table_, 0);
  FUNC2(L, 1);
}