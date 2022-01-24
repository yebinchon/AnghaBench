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
typedef  int u8 ;

/* Variables and functions */
 int LSM_SEPARATOR ; 
 int LSM_SYSTEMKEY ; 
 size_t FUNC0 (int,int) ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int*) ; 
 scalar_t__ FUNC4 (int*,int*) ; 

__attribute__((used)) static int FUNC5(u8 *aData, int nData){
  int nRec;
  int iOff;
  int nKey;
  int eType;

  nRec = FUNC3(&aData[FUNC1(nData)]);
  iOff = FUNC3(&aData[FUNC0(nData, nRec-1)]);
  eType = aData[iOff++];
  FUNC2( eType==0 
       || eType==(LSM_SYSTEMKEY|LSM_SEPARATOR) 
       || eType==(LSM_SEPARATOR)
  );

  iOff += FUNC4(&aData[iOff], &nKey);
  iOff += FUNC4(&aData[iOff], &nKey);

  return iOff + (eType ? nKey : 0);
}