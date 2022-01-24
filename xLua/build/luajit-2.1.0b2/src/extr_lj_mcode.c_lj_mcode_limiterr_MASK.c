#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t szallmcarea; scalar_t__* param; } ;
typedef  TYPE_1__ jit_State ;

/* Variables and functions */
 size_t JIT_P_maxmcode ; 
 size_t JIT_P_sizemcode ; 
 size_t LJ_PAGESIZE ; 
 int /*<<< orphan*/  LJ_TRERR_MCODEAL ; 
 int /*<<< orphan*/  LJ_TRERR_MCODELM ; 
 int /*<<< orphan*/  LJ_TRERR_MCODEOV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(jit_State *J, size_t need)
{
  size_t sizemcode, maxmcode;
  FUNC0(J);
  sizemcode = (size_t)J->param[JIT_P_sizemcode] << 10;
  sizemcode = (sizemcode + LJ_PAGESIZE-1) & ~(size_t)(LJ_PAGESIZE - 1);
  maxmcode = (size_t)J->param[JIT_P_maxmcode] << 10;
  if ((size_t)need > sizemcode)
    FUNC1(J, LJ_TRERR_MCODEOV);  /* Too long for any area. */
  if (J->szallmcarea + sizemcode > maxmcode)
    FUNC1(J, LJ_TRERR_MCODEAL);
  FUNC2(J);
  FUNC1(J, LJ_TRERR_MCODELM);  /* Retry with new area. */
}