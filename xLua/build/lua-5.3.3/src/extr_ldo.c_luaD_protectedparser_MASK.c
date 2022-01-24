#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ size; int /*<<< orphan*/ * arr; } ;
struct TYPE_13__ {scalar_t__ size; int /*<<< orphan*/ * arr; } ;
struct TYPE_12__ {scalar_t__ size; int /*<<< orphan*/ * arr; } ;
struct TYPE_15__ {TYPE_3__ label; TYPE_2__ gt; TYPE_1__ actvar; } ;
struct SParser {char const* name; char const* mode; TYPE_4__ dyd; int /*<<< orphan*/  buff; int /*<<< orphan*/ * z; } ;
struct TYPE_16__ {int /*<<< orphan*/  nny; int /*<<< orphan*/  errfunc; int /*<<< orphan*/  top; } ;
typedef  TYPE_5__ lua_State ;
typedef  int /*<<< orphan*/  ZIO ;

/* Variables and functions */
 int /*<<< orphan*/  f_parser ; 
 int FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,struct SParser*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 

int FUNC5 (lua_State *L, ZIO *z, const char *name,
                                        const char *mode) {
  struct SParser p;
  int status;
  L->nny++;  /* cannot yield during parsing */
  p.z = z; p.name = name; p.mode = mode;
  p.dyd.actvar.arr = NULL; p.dyd.actvar.size = 0;
  p.dyd.gt.arr = NULL; p.dyd.gt.size = 0;
  p.dyd.label.arr = NULL; p.dyd.label.size = 0;
  FUNC3(L, &p.buff);
  status = FUNC0(L, f_parser, &p, FUNC4(L, L->top), L->errfunc);
  FUNC2(L, &p.buff);
  FUNC1(L, p.dyd.actvar.arr, p.dyd.actvar.size);
  FUNC1(L, p.dyd.gt.arr, p.dyd.gt.size);
  FUNC1(L, p.dyd.label.arr, p.dyd.label.size);
  L->nny--;
  return status;
}