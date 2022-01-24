#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  global_State ;
struct TYPE_11__ {int ok; int /*<<< orphan*/ * pb; int /*<<< orphan*/ * pe; scalar_t__ needsp; int /*<<< orphan*/ * L; int /*<<< orphan*/  cts; int /*<<< orphan*/ * buf; } ;
struct TYPE_10__ {int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ GCstr ;
typedef  int /*<<< orphan*/  CTypeID ;
typedef  TYPE_2__ CTRepr ;

/* Variables and functions */
 int CTREPR_MAX ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

GCstr *FUNC8(lua_State *L, CTypeID id, GCstr *name)
{
  global_State *g = FUNC0(L);
  CTRepr ctr;
  ctr.pb = ctr.pe = &ctr.buf[CTREPR_MAX/2];
  ctr.cts = FUNC2(g);
  ctr.L = L;
  ctr.ok = 1;
  ctr.needsp = 0;
  if (name) FUNC3(&ctr, FUNC7(name), name->len);
  FUNC4(&ctr, id);
  if (FUNC1(!ctr.ok)) return FUNC6(L, "?");
  return FUNC5(L, ctr.pb, ctr.pe - ctr.pb);
}