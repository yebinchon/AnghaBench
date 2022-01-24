#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int hi; } ;
struct TYPE_4__ {double n; TYPE_1__ u32; } ;
typedef  TYPE_2__ TValue ;
typedef  int /*<<< orphan*/  SBuf ;
typedef  int /*<<< orphan*/  GCstr ;
typedef  int CTSize ;

/* Variables and functions */
 int /*<<< orphan*/  STRFMT_G14 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 

GCstr *FUNC5(lua_State *L, void *sp, CTSize size)
{
  SBuf *sb = FUNC2(L);
  TValue re, im;
  if (size == 2*sizeof(double)) {
    re.n = *(double *)sp; im.n = ((double *)sp)[1];
  } else {
    re.n = (double)*(float *)sp; im.n = (double)((float *)sp)[1];
  }
  FUNC3(sb, STRFMT_G14, re.n);
  if (!(im.u32.hi & 0x80000000u) || im.n != im.n) FUNC0(sb, '+');
  FUNC3(sb, STRFMT_G14, im.n);
  FUNC0(sb, FUNC4(sb)[-1] >= 'a' ? 'I' : 'i');
  return FUNC1(L, sb);
}