#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ top; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_11__ {int /*<<< orphan*/  metatable; int /*<<< orphan*/  udtype; } ;
struct TYPE_10__ {int /*<<< orphan*/  type; int /*<<< orphan*/ * fp; } ;
typedef  TYPE_2__ IOFileUD ;
typedef  TYPE_3__ GCudata ;
typedef  int /*<<< orphan*/  GCobj ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  IOFILE_TYPE_STDF ; 
 int /*<<< orphan*/  UDTYPE_IO_FILE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (scalar_t__) ; 

__attribute__((used)) static GCobj *FUNC6(lua_State *L, FILE *fp, const char *name)
{
  IOFileUD *iof = (IOFileUD *)FUNC1(L, sizeof(IOFileUD));
  GCudata *ud = FUNC5(L->top-1);
  ud->udtype = UDTYPE_IO_FILE;
  /* NOBARRIER: The GCudata is new (marked white). */
  FUNC4(ud->metatable, FUNC0(L->top-3));
  iof->fp = fp;
  iof->type = IOFILE_TYPE_STDF;
  FUNC2(L, -2, name);
  return FUNC3(ud);
}