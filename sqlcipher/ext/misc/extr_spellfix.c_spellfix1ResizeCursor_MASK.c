#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct spellfix1_row {int dummy; } ;
struct TYPE_4__ {int nRow; int nAlloc; struct spellfix1_row* a; } ;
typedef  TYPE_1__ spellfix1_cursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct spellfix1_row*) ; 
 struct spellfix1_row* FUNC3 (struct spellfix1_row*,int) ; 

__attribute__((used)) static void FUNC4(spellfix1_cursor *pCur, int N){
  struct spellfix1_row *aNew;
  FUNC0( N>=pCur->nRow );
  aNew = FUNC3(pCur->a, sizeof(pCur->a[0])*N);
  if( aNew==0 && N>0 ){
    FUNC1(pCur);
    FUNC2(pCur->a);
    pCur->nAlloc = 0;
    pCur->a = 0;
  }else{
    pCur->nAlloc = N;
    pCur->a = aNew;
  }
}