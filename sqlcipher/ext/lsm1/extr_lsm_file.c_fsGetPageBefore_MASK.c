#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  i64 ;
typedef  int /*<<< orphan*/  aSz ;
struct TYPE_5__ {int /*<<< orphan*/  pCompress; } ;
typedef  int /*<<< orphan*/  Segment ;
typedef  int /*<<< orphan*/  LsmPgno ;
typedef  TYPE_1__ FileSystem ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int*,int*) ; 

__attribute__((used)) static int FUNC4(
  FileSystem *pFS, 
  Segment *pSeg, 
  LsmPgno iPg, 
  LsmPgno *piPrev
){
  u8 aSz[3];
  int rc;
  i64 iRead;

  FUNC0( pFS->pCompress );

  rc = FUNC2(pFS, pSeg, iPg, sizeof(aSz), &iRead);
  if( rc==LSM_OK ) rc = FUNC1(pFS, pSeg, iRead, aSz, sizeof(aSz));

  if( rc==LSM_OK ){
    int bFree;
    int nSz;
    if( aSz[2] & 0x80 ){
      nSz = FUNC3(aSz, &bFree) + sizeof(aSz)*2;
    }else{
      nSz = (int)(aSz[2] & 0x7F);
      bFree = 1;
    }
    rc = FUNC2(pFS, pSeg, iPg, nSz, piPrev);
  }

  return rc;
}