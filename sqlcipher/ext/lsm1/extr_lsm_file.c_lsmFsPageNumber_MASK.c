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
struct TYPE_3__ {int /*<<< orphan*/  iPg; } ;
typedef  TYPE_1__ Page ;
typedef  int /*<<< orphan*/  LsmPgno ;

/* Variables and functions */

LsmPgno FUNC0(Page *pPage){
  /* assert( (pPage->flags & PAGE_DIRTY)==0 ); */
  return pPage ? pPage->iPg : 0;
}