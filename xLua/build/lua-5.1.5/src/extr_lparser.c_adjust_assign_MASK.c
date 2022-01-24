#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ k; } ;
typedef  TYPE_1__ expdesc ;
struct TYPE_14__ {int freereg; } ;
struct TYPE_13__ {TYPE_3__* fs; } ;
typedef  TYPE_2__ LexState ;
typedef  TYPE_3__ FuncState ;

/* Variables and functions */
 scalar_t__ VVOID ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC5 (LexState *ls, int nvars, int nexps, expdesc *e) {
  FuncState *fs = ls->fs;
  int extra = nvars - nexps;
  if (FUNC0(e->k)) {
    extra++;  /* includes call itself */
    if (extra < 0) extra = 0;
    FUNC4(fs, e, extra);  /* last exp. provides the difference */
    if (extra > 1) FUNC3(fs, extra-1);
  }
  else {
    if (e->k != VVOID) FUNC1(fs, e);  /* close last expression */
    if (extra > 0) {
      int reg = fs->freereg;
      FUNC3(fs, extra);
      FUNC2(fs, reg, extra);
    }
  }
}