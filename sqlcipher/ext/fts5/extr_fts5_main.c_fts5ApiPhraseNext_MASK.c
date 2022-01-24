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
struct TYPE_3__ {scalar_t__ a; scalar_t__ b; } ;
typedef  TYPE_1__ Fts5PhraseIter ;
typedef  int /*<<< orphan*/  Fts5Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(
  Fts5Context *pUnused, 
  Fts5PhraseIter *pIter, 
  int *piCol, int *piOff
){
  FUNC0(pUnused);
  if( pIter->a>=pIter->b ){
    *piCol = -1;
    *piOff = -1;
  }else{
    int iVal;
    pIter->a += FUNC1(pIter->a, iVal);
    if( iVal==1 ){
      pIter->a += FUNC1(pIter->a, iVal);
      *piCol = iVal;
      *piOff = 0;
      pIter->a += FUNC1(pIter->a, iVal);
    }
    *piOff += (iVal-2);
  }
}