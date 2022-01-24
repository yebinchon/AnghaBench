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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  io_fclose ; 
 int /*<<< orphan*/  io_noclose ; 
 int /*<<< orphan*/  io_pclose ; 
 int /*<<< orphan*/  iolib ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int FUNC8(lua_State*L){
FUNC0(L);
FUNC7(L,io_fclose);
FUNC5(L,(-10001));
FUNC2(L,"io",iolib);
FUNC7(L,io_noclose);
FUNC1(L,stdin,1,"stdin");
FUNC1(L,stdout,2,"stdout");
FUNC1(L,stderr,0,"stderr");
FUNC4(L,1);
FUNC3(L,-1,"popen");
FUNC7(L,io_pclose);
FUNC6(L,-2);
FUNC4(L,1);
return 1;
}