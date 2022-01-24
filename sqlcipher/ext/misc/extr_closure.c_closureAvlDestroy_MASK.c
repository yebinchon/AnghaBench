#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* pAfter; struct TYPE_5__* pBefore; } ;
typedef  TYPE_1__ closure_avl ;

/* Variables and functions */

__attribute__((used)) static void FUNC0(closure_avl *p, void (*xDestroy)(closure_avl*)){
  if( p ){
    FUNC0(p->pBefore, xDestroy);
    FUNC0(p->pAfter, xDestroy);
    xDestroy(p);
  }
}