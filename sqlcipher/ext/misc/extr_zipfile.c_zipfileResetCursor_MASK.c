#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* pNext; } ;
typedef  TYPE_1__ ZipfileEntry ;
struct TYPE_6__ {TYPE_1__* pFreeEntry; TYPE_1__* pCurrent; scalar_t__ pFile; scalar_t__ bEof; } ;
typedef  TYPE_2__ ZipfileCsr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(ZipfileCsr *pCsr){
  ZipfileEntry *p;
  ZipfileEntry *pNext;

  pCsr->bEof = 0;
  if( pCsr->pFile ){
    FUNC0(pCsr->pFile);
    pCsr->pFile = 0;
    FUNC1(pCsr->pCurrent);
    pCsr->pCurrent = 0;
  }

  for(p=pCsr->pFreeEntry; p; p=pNext){
    pNext = p->pNext;
    FUNC1(p);
  }
}