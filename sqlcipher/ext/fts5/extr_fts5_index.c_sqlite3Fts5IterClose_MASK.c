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
struct TYPE_3__ {int /*<<< orphan*/ * pIndex; } ;
typedef  TYPE_1__ Fts5Iter ;
typedef  int /*<<< orphan*/  Fts5IndexIter ;
typedef  int /*<<< orphan*/  Fts5Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(Fts5IndexIter *pIndexIter){
  if( pIndexIter ){
    Fts5Iter *pIter = (Fts5Iter*)pIndexIter;
    Fts5Index *pIndex = pIter->pIndex;
    FUNC1(pIter);
    FUNC0(pIndex);
  }
}