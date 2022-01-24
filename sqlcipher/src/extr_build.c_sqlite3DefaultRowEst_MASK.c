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
struct TYPE_6__ {int* aiRowLogEst; int nKeyCol; scalar_t__ pPartIdxWhere; TYPE_1__* pTable; int /*<<< orphan*/  hasStat1; } ;
struct TYPE_5__ {int nRowLogEst; } ;
typedef  int LogEst ;
typedef  TYPE_2__ Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 int FUNC5 (int) ; 

void FUNC6(Index *pIdx){
  /*                10,  9,  8,  7,  6 */
  LogEst aVal[] = { 33, 32, 30, 28, 26 };
  LogEst *a = pIdx->aiRowLogEst;
  int nCopy = FUNC2(FUNC0(aVal), pIdx->nKeyCol);
  int i;

  /* Indexes with default row estimates should not have stat1 data */
  FUNC3( !pIdx->hasStat1 );

  /* Set the first entry (number of rows in the index) to the estimated 
  ** number of rows in the table, or half the number of rows in the table
  ** for a partial index.   But do not let the estimate drop below 10. */
  a[0] = pIdx->pTable->nRowLogEst;
  if( pIdx->pPartIdxWhere!=0 ) a[0] -= 10;  FUNC3( 10==FUNC5(2) );
  if( a[0]<33 ) a[0] = 33;                  FUNC3( 33==FUNC5(10) );

  /* Estimate that a[1] is 10, a[2] is 9, a[3] is 8, a[4] is 7, a[5] is
  ** 6 and each subsequent value (if any) is 5.  */
  FUNC4(&a[1], aVal, nCopy*sizeof(LogEst));
  for(i=nCopy+1; i<=pIdx->nKeyCol; i++){
    a[i] = 23;                    FUNC3( 23==FUNC5(5) );
  }

  FUNC3( 0==FUNC5(1) );
  if( FUNC1(pIdx) ) a[pIdx->nKeyCol] = 0;
}