#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* pSchema; void (* xFreeSchema ) (void*) ;} ;
struct TYPE_6__ {TYPE_2__* pBt; } ;
typedef  TYPE_1__ Btree ;
typedef  TYPE_2__ BtShared ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int) ; 

void *FUNC3(Btree *p, int nBytes, void(*xFree)(void *)){
  BtShared *pBt = p->pBt;
  FUNC0(p);
  if( !pBt->pSchema && nBytes ){
    pBt->pSchema = FUNC2(0, nBytes);
    pBt->xFreeSchema = xFree;
  }
  FUNC1(p);
  return pBt->pSchema;
}