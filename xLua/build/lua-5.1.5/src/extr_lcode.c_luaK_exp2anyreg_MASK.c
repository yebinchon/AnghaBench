#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int info; } ;
struct TYPE_14__ {TYPE_2__ s; } ;
struct TYPE_16__ {scalar_t__ k; TYPE_1__ u; } ;
typedef  TYPE_3__ expdesc ;
struct TYPE_17__ {scalar_t__ nactvar; } ;
typedef  TYPE_4__ FuncState ;

/* Variables and functions */
 scalar_t__ VNONRELOC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_3__*) ; 

int FUNC4 (FuncState *fs, expdesc *e) {
  FUNC2(fs, e);
  if (e->k == VNONRELOC) {
    if (!FUNC1(e)) return e->u.s.info;  /* exp is already in a register */
    if (e->u.s.info >= fs->nactvar) {  /* reg. is not a local? */
      FUNC0(fs, e, e->u.s.info);  /* put value on it */
      return e->u.s.info;
    }
  }
  FUNC3(fs, e);  /* default */
  return e->u.s.info;
}