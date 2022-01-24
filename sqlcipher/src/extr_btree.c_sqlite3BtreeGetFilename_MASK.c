#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* pBt; } ;
struct TYPE_4__ {scalar_t__ pPager; } ;
typedef  TYPE_2__ Btree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char const* FUNC1 (scalar_t__,int) ; 

const char *FUNC2(Btree *p){
  FUNC0( p->pBt->pPager!=0 );
  return FUNC1(p->pBt->pPager, 1);
}