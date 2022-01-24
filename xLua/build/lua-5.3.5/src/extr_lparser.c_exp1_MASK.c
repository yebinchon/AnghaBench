#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int info; } ;
struct TYPE_9__ {scalar_t__ k; TYPE_1__ u; } ;
typedef  TYPE_2__ expdesc ;
struct TYPE_10__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_3__ LexState ;

/* Variables and functions */
 scalar_t__ VNONRELOC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3 (LexState *ls) {
  expdesc e;
  int reg;
  FUNC0(ls, &e);
  FUNC1(ls->fs, &e);
  FUNC2(e.k == VNONRELOC);
  reg = e.u.info;
  return reg;
}