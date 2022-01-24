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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  torch_DiskFile__ ; 
 int /*<<< orphan*/  torch_DiskFile_free ; 
 int /*<<< orphan*/  torch_DiskFile_new ; 

void FUNC3(lua_State *L)
{
  FUNC0(L, "torch.DiskFile", "torch.File",
                    torch_DiskFile_new, torch_DiskFile_free, NULL);

  FUNC1(L, torch_DiskFile__, 0);
  FUNC2(L, 1);
}