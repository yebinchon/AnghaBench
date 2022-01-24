#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ lua_Number ;
typedef  int int32_t ;
struct TYPE_11__ {int lo; int hi; } ;
struct TYPE_12__ {TYPE_1__ u32; } ;
typedef  TYPE_2__ cTValue ;
struct TYPE_14__ {int /*<<< orphan*/  sb; } ;
struct TYPE_13__ {int sizekn; int /*<<< orphan*/  k; } ;
typedef  int MSize ;
typedef  TYPE_3__ GCproto ;
typedef  TYPE_4__ BCWriteCtx ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_DUALNUM ; 
 int /*<<< orphan*/  TValue ; 
 int FUNC0 (TYPE_2__*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (scalar_t__) ; 
 char* FUNC3 (char*,int) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC8(BCWriteCtx *ctx, GCproto *pt)
{
  MSize i, sizekn = pt->sizekn;
  cTValue *o = FUNC4(pt->k, TValue);
  char *p = FUNC1(&ctx->sb, 10*sizekn);
  for (i = 0; i < sizekn; i++, o++) {
    int32_t k;
    if (FUNC7(o)) {
      k = FUNC0(o);
      goto save_int;
    } else {
      /* Write a 33 bit ULEB128 for the int (lsb=0) or loword (lsb=1). */
      if (!LJ_DUALNUM) {  /* Narrow number constants to integers. */
	lua_Number num = FUNC5(o);
	k = FUNC2(num);
	if (num == (lua_Number)k) {  /* -0 is never a constant. */
	save_int:
	  p = FUNC3(p, 2*(uint32_t)k | ((uint32_t)k&0x80000000u));
	  if (k < 0)
	    p[-1] = (p[-1] & 7) | ((k>>27) & 0x18);
	  continue;
	}
      }
      p = FUNC3(p, 1+(2*o->u32.lo | (o->u32.lo & 0x80000000u)));
      if (o->u32.lo >= 0x80000000u)
	p[-1] = (p[-1] & 7) | ((o->u32.lo>>27) & 0x18);
      p = FUNC3(p, o->u32.hi);
    }
  }
  FUNC6(&ctx->sb, p);
}