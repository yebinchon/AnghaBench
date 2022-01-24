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
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  THFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(lua_State *L)
{
  THFile *self = FUNC3(L, 1, "torch.File");
  ptrdiff_t position = FUNC2(L, 2)-1;
  // >= 0 because it has 1 already subtracted
  FUNC0(position >= 0, 2, "position has to be greater than 0!");
  FUNC1(self, (size_t)position);
  FUNC4(L, 1);
  return 1;
}