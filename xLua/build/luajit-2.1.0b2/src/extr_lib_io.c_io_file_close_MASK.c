#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_9__ {int type; int /*<<< orphan*/ * fp; } ;
typedef  TYPE_2__ IOFileUD ;

/* Variables and functions */
 int IOFILE_TYPE_FILE ; 
 int IOFILE_TYPE_MASK ; 
 int IOFILE_TYPE_PIPE ; 
 int IOFILE_TYPE_STDF ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(lua_State *L, IOFileUD *iof)
{
  int ok;
  if ((iof->type & IOFILE_TYPE_MASK) == IOFILE_TYPE_FILE) {
    ok = (FUNC1(iof->fp) == 0);
  } else if ((iof->type & IOFILE_TYPE_MASK) == IOFILE_TYPE_PIPE) {
    int stat = -1;
#if LJ_TARGET_POSIX
    stat = pclose(iof->fp);
#elif LJ_TARGET_WINDOWS && !LJ_TARGET_XBOXONE
    stat = _pclose(iof->fp);
#else
    FUNC4(0);
    return 0;
#endif
#if LJ_52
    iof->fp = NULL;
    return luaL_execresult(L, stat);
#else
    ok = (stat != -1);
#endif
  } else {
    FUNC4((iof->type & IOFILE_TYPE_MASK) == IOFILE_TYPE_STDF);
    FUNC7(L->top++);
    FUNC5(L, "cannot close standard file");
    return 2;
  }
  iof->fp = NULL;
  return FUNC3(L, ok, NULL);
}