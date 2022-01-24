#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  nRow; } ;
typedef  TYPE_1__ Cksum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(
  void *pCtx, 
  void *pKey, int nKey,
  void *pVal, int nVal
){
  Cksum *p = (Cksum *)pCtx;
  p->nRow++;

  FUNC0(pKey);
  FUNC0(nKey);
  FUNC0(pVal);
  FUNC0(nVal);
}