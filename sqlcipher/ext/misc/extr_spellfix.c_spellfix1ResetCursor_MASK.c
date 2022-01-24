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
struct TYPE_5__ {int nRow; scalar_t__ pFullScan; scalar_t__ nSearch; scalar_t__ iRow; TYPE_1__* a; } ;
typedef  TYPE_2__ spellfix1_cursor ;
struct TYPE_4__ {int /*<<< orphan*/  zWord; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(spellfix1_cursor *pCur){
  int i;
  for(i=0; i<pCur->nRow; i++){
    FUNC1(pCur->a[i].zWord);
  }
  pCur->nRow = 0;
  pCur->iRow = 0;
  pCur->nSearch = 0;
  if( pCur->pFullScan ){
    FUNC0(pCur->pFullScan);
    pCur->pFullScan = 0;
  }
}