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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  LsmPgno ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static LsmPgno FUNC4(u8 *aData, int nData, int iCell){
  LsmPgno iRet;                   /* Return value */
  u8 *aCell;                      /* Pointer to cell iCell */

  FUNC0( iCell<FUNC3(aData, nData) && iCell>=0 );
  aCell = FUNC2(aData, nData, iCell);
  FUNC1(&aCell[1], &iRet);
  return iRet;
}