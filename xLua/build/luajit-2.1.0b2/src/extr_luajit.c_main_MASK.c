#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {int argc; char** argv; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  pmain ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__ smain ; 

int FUNC5(int argc, char **argv)
{
  int status;
  lua_State *L = FUNC3();  /* create state */
  if (L == NULL) {
    FUNC0(argv[0], "cannot create state: not enough memory");
    return EXIT_FAILURE;
  }
  smain.argc = argc;
  smain.argv = argv;
  status = FUNC2(L, pmain, NULL);
  FUNC4(L, status);
  FUNC1(L);
  return (status || smain.status) ? EXIT_FAILURE : EXIT_SUCCESS;
}