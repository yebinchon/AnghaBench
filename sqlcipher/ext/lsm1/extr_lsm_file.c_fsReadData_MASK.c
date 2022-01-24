#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ i64 ;
struct TYPE_7__ {int /*<<< orphan*/  fdDb; int /*<<< orphan*/  pEnv; int /*<<< orphan*/  pCompress; } ;
typedef  int /*<<< orphan*/  Segment ;
typedef  TYPE_1__ FileSystem ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(
  FileSystem *pFS,                /* File-system handle */
  Segment *pSeg,                  /* Block redirection */
  i64 iOff,                       /* Read data from this offset */
  u8 *aData,                      /* Buffer to read data into */
  int nData                       /* Number of bytes to read */
){
  i64 iEob;                       /* End of block */
  int nRead;
  int rc;

  FUNC1( pFS->pCompress );

  iEob = FUNC4(pFS, iOff) + 1;
  nRead = (int)FUNC0(iEob - iOff, nData);

  rc = FUNC6(pFS->pEnv, pFS->fdDb, iOff, aData, nRead);
  if( rc==LSM_OK && nRead!=nData ){
    int iBlk;

    rc = FUNC2(pFS, pSeg, FUNC5(pFS, iOff), &iBlk);
    if( rc==LSM_OK ){
      i64 iOff2 = FUNC3(pFS, iBlk);
      rc = FUNC6(pFS->pEnv, pFS->fdDb, iOff2, &aData[nRead], nData-nRead);
    }
  }

  return rc;
}