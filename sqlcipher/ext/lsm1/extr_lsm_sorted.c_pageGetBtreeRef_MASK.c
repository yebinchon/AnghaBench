#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ LsmPgno ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*) ; 
 scalar_t__* FUNC3 (scalar_t__*,int,int) ; 

__attribute__((used)) static LsmPgno FUNC4(Page *pPg, int iKey){
  LsmPgno iRef;
  u8 *aData;
  int nData;
  u8 *aCell;

  aData = FUNC1(pPg, &nData);
  aCell = FUNC3(aData, nData, iKey);
  FUNC0( aCell[0]==0 );
  aCell++;
  aCell += FUNC2(aCell, &iRef);
  FUNC2(aCell, &iRef);
  FUNC0( iRef>0 );
  return iRef;
}