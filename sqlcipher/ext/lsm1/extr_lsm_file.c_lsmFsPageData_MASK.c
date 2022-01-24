#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int nData; int /*<<< orphan*/ * aData; } ;
typedef  TYPE_1__ Page ;

/* Variables and functions */

u8 *FUNC0(Page *pPage, int *pnData){
  if( pnData ){
    *pnData = pPage->nData;
  }
  return pPage->aData;
}