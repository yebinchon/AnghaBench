#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* pBt; } ;
struct TYPE_7__ {int optimalReserve; } ;
typedef  TYPE_2__ Btree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

int FUNC3(Btree *p){
  int n;
  FUNC0(p);
  n = FUNC1(p);
#ifdef SQLITE_HAS_CODEC
  if( n<p->pBt->optimalReserve ) n = p->pBt->optimalReserve;
#endif
  FUNC2(p);
  return n;
}