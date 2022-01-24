#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int int32_t ;
struct TYPE_12__ {scalar_t__ nupvalues; int /*<<< orphan*/ * uvptr; } ;
struct TYPE_15__ {TYPE_1__ l; } ;
struct TYPE_14__ {size_t sizeuv; } ;
struct TYPE_13__ {int immutable; int dhash; } ;
typedef  size_t MSize ;
typedef  TYPE_2__ GCupval ;
typedef  int /*<<< orphan*/  GCtab ;
typedef  TYPE_3__ GCproto ;
typedef  TYPE_4__ GCfunc ;

/* Variables and functions */
 int PROTO_UV_IMMUTABLE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

GCfunc *FUNC5(lua_State *L, GCproto *pt, GCtab *env)
{
  GCfunc *fn = FUNC1(L, pt, env);
  MSize i, nuv = pt->sizeuv;
  /* NOBARRIER: The GCfunc is new (marked white). */
  for (i = 0; i < nuv; i++) {
    GCupval *uv = FUNC0(L);
    int32_t v = FUNC3(pt)[i];
    uv->immutable = ((v / PROTO_UV_IMMUTABLE) & 1);
    uv->dhash = (uint32_t)(uintptr_t)pt ^ (v << 24);
    FUNC4(fn->l.uvptr[i], FUNC2(uv));
  }
  fn->l.nupvalues = (uint8_t)nuv;
  return fn;
}