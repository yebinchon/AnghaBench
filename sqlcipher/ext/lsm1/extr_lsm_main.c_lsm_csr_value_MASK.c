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
typedef  int /*<<< orphan*/  lsm_cursor ;
typedef  int /*<<< orphan*/  MultiCursor ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,void**,int*) ; 

int FUNC1(lsm_cursor *pCsr, const void **ppVal, int *pnVal){
  return FUNC0((MultiCursor *)pCsr, (void **)ppVal, pnVal);
}