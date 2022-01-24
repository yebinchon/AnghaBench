#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ top; } ;
typedef  TYPE_2__ lua_State ;
struct TYPE_11__ {int /*<<< orphan*/  env; } ;
struct TYPE_15__ {TYPE_1__ c; } ;
struct TYPE_14__ {int /*<<< orphan*/  metatable; int /*<<< orphan*/  udtype; } ;
struct TYPE_13__ {int /*<<< orphan*/  type; int /*<<< orphan*/ * fp; } ;
typedef  TYPE_3__ IOFileUD ;
typedef  TYPE_4__ GCudata ;

/* Variables and functions */
 int /*<<< orphan*/  IOFILE_TYPE_FILE ; 
 int /*<<< orphan*/  UDTYPE_IO_FILE ; 
 TYPE_9__* FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (scalar_t__) ; 

__attribute__((used)) static IOFileUD *FUNC4(lua_State *L)
{
  IOFileUD *iof = (IOFileUD *)FUNC1(L, sizeof(IOFileUD));
  GCudata *ud = FUNC3(L->top-1);
  ud->udtype = UDTYPE_IO_FILE;
  /* NOBARRIER: The GCudata is new (marked white). */
  FUNC2(ud->metatable, FUNC0(L)->c.env);
  iof->fp = NULL;
  iof->type = IOFILE_TYPE_FILE;
  return iof;
}