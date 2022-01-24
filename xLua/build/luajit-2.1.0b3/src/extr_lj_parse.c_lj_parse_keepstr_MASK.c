#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {TYPE_1__* fs; int /*<<< orphan*/ * L; } ;
struct TYPE_4__ {int /*<<< orphan*/  kt; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_2__ LexState ;
typedef  int /*<<< orphan*/  GCstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

GCstr *FUNC5(LexState *ls, const char *str, size_t len)
{
  /* NOBARRIER: the key is new or kept alive. */
  lua_State *L = ls->L;
  GCstr *s = FUNC1(L, str, len);
  TValue *tv = FUNC2(L, ls->fs->kt, s);
  if (FUNC4(tv)) FUNC3(tv, 1);
  FUNC0(L);
  return s;
}