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
typedef  scalar_t__ LsmPgno ;
typedef  int /*<<< orphan*/  FileSystem ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static LsmPgno FUNC1(
  FileSystem *pFS, 
  int iBlk, 
  LsmPgno *aPgno, 
  int nPgno
){
  LsmPgno iRet = 0;
  int i;
  for(i=0; i<nPgno; i++){
    LsmPgno iPg = aPgno[i];
    if( FUNC0(pFS, iPg)==iBlk && (iRet==0 || iPg<iRet) ){
      iRet = iPg;
    }
  }
  return iRet;
}