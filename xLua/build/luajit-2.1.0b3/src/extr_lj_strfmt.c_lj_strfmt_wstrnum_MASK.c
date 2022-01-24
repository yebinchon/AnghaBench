#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_10__ {int /*<<< orphan*/  n; } ;
typedef  TYPE_1__ cTValue ;
struct TYPE_11__ {int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  SBuf ;
typedef  int /*<<< orphan*/  MSize ;

/* Variables and functions */
 int /*<<< orphan*/  STRFMT_G14 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char const* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC6 (TYPE_1__*) ; 
 char const* FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 

const char *FUNC11(lua_State *L, cTValue *o, MSize *lenp)
{
  SBuf *sb;
  if (FUNC10(o)) {
    *lenp = FUNC6(o)->len;
    return FUNC7(o);
  } else if (FUNC8(o)) {
    sb = FUNC3(FUNC1(L), FUNC0(o));
  } else if (FUNC9(o)) {
    sb = FUNC2(FUNC1(L), STRFMT_G14, o->n);
  } else {
    return NULL;
  }
  *lenp = FUNC5(sb);
  return FUNC4(sb);
}