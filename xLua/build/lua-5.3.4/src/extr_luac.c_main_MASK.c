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
 int EXIT_SUCCESS ; 
 scalar_t__ LUA_OK ; 
 int FUNC0 (int,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char**) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pmain ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int FUNC10(int argc, char* argv[])
{
 lua_State* L;
 int i=FUNC0(argc,argv);
 argc-=i; argv+=i;
 if (argc<=0) FUNC9("no input files given");
 L=FUNC2();
 if (L==NULL) FUNC1("cannot create state: not enough memory");
 FUNC5(L,&pmain);
 FUNC6(L,argc);
 FUNC7(L,argv);
 if (FUNC4(L,2,0,0)!=LUA_OK) FUNC1(FUNC8(L,-1));
 FUNC3(L);
 return EXIT_SUCCESS;
}