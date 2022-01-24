#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int info; } ;
struct TYPE_14__ {scalar_t__ k; TYPE_1__ u; } ;
typedef  TYPE_2__ expdesc ;
struct TYPE_15__ {scalar_t__ nactvar; } ;
typedef  TYPE_3__ FuncState ;

/* Variables and functions */
 scalar_t__ VNONRELOC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 

int FUNC4 (FuncState *fs, expdesc *e) {
  FUNC2(fs, e);
  if (e->k == VNONRELOC) {  /* expression already has a register? */
    if (!FUNC1(e))  /* no jumps? */
      return e->u.info;  /* result is already in a register */
    if (e->u.info >= fs->nactvar) {  /* reg. is not a local? */
      FUNC0(fs, e, e->u.info);  /* put final result in it */
      return e->u.info;
    }
  }
  FUNC3(fs, e);  /* otherwise, use next available register */
  return e->u.info;
}