#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  jit_State ;
typedef  int /*<<< orphan*/  IRIns ;
typedef  int /*<<< orphan*/  AliasRet ;

/* Variables and functions */
 int /*<<< orphan*/  ALIAS_MAY ; 
 int /*<<< orphan*/  ALIAS_NO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static AliasRet FUNC2(jit_State *J, IRIns *refa, IRIns *refb)
{
  IRIns *cnewa = FUNC1(J, refa);
  IRIns *cnewb = FUNC1(J, refb);
  if (cnewa == cnewb)
    return ALIAS_MAY;  /* Same allocation or neither is an allocation. */
  if (cnewa && cnewb)
    return ALIAS_NO;  /* Two different allocations never alias. */
  if (cnewb) { cnewa = cnewb; refb = refa; }
  return FUNC0(J, cnewa, refb);
}