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
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static int FUNC9(lua_State *L)
{
 int n=FUNC1(L);
 int i;
 for (i=1; i<=n; i++)
 {
  if (i>1) FUNC8("\t");
  if (FUNC4(L,i))
   FUNC8("%s",FUNC7(L,i));
  else if (FUNC3(L,i))
   FUNC8("%s","nil");
  else if (FUNC2(L,i))
   FUNC8("%s",FUNC5(L,i) ? "true" : "false");
  else
   FUNC8("%s:%p",FUNC0(L,i),FUNC6(L,i));
 }
 FUNC8("\n");
 return 0;
}