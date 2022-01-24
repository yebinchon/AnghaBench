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
typedef  int /*<<< orphan*/  Page ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 

void FUNC4(Page *pPg, int nOrig){
  u8 *aData;
  int nData;
  int nEntry;
  int iHdr;

  aData = FUNC1(pPg, &nData);
  nEntry = FUNC3(aData, nOrig);
  iHdr = FUNC0(nOrig, nEntry);
  FUNC2(&aData[iHdr + (nData-nOrig)], &aData[iHdr], nOrig-iHdr);
}