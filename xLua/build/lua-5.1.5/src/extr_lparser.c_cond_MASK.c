#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ k; int f; } ;
typedef  TYPE_1__ expdesc ;
struct TYPE_8__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_2__ LexState ;

/* Variables and functions */
 scalar_t__ VFALSE ; 
 scalar_t__ VNIL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC2 (LexState *ls) {
  /* cond -> exp */
  expdesc v;
  FUNC0(ls, &v);  /* read condition */
  if (v.k == VNIL) v.k = VFALSE;  /* `falses' are all equal here */
  FUNC1(ls->fs, &v);
  return v.f;
}