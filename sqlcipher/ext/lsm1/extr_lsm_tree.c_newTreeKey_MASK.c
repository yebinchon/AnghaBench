#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_8__ {int iWrite; } ;
struct TYPE_9__ {TYPE_1__ treehdr; } ;
typedef  TYPE_2__ lsm_db ;
struct TYPE_10__ {int nKey; int nValue; scalar_t__ flags; } ;
typedef  TYPE_3__ TreeKey ;

/* Variables and functions */
 scalar_t__ LSM_CONTIGUOUS ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int LSM_SHM_CHUNK_HDR ; 
 int LSM_SHM_CHUNK_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 
 int FUNC4 (TYPE_2__*,int,int,int*) ; 
 void* FUNC5 (TYPE_2__*,int) ; 

__attribute__((used)) static TreeKey *FUNC6(
  lsm_db *pDb, 
  u32 *piPtr, 
  void *pKey, int nKey,           /* Key data */
  void *pVal, int nVal,           /* Value data (or nVal<0 for delete) */
  int *pRc
){
  TreeKey *p;
  u32 iPtr;
  u32 iEnd;
  int nRem;
  u8 *a;
  int n;

  /* Allocate space for the TreeKey structure itself */
  *piPtr = iPtr = FUNC4(pDb, 1, sizeof(TreeKey), pRc);
  p = FUNC5(pDb, iPtr);
  if( *pRc ) return 0;
  p->nKey = nKey;
  p->nValue = nVal;

  /* Allocate and populate the space required for the key and value. */
  n = nRem = nKey;
  a = (u8 *)pKey;
  while( a ){
    while( nRem>0 ){
      u8 *aAlloc;
      int nAlloc;
      u32 iWrite;

      iWrite = (pDb->treehdr.iWrite & (LSM_SHM_CHUNK_SIZE-1));
      iWrite = FUNC0(iWrite, LSM_SHM_CHUNK_HDR);
      nAlloc = FUNC1((LSM_SHM_CHUNK_SIZE-iWrite), (u32)nRem);

      aAlloc = FUNC5(pDb, FUNC4(pDb, 0, nAlloc, pRc));
      if( aAlloc==0 ) break;
      FUNC2(aAlloc, &a[n-nRem], nAlloc);
      nRem -= nAlloc;
    }
    a = pVal;
    n = nRem = nVal;
    pVal = 0;
  }

  iEnd = iPtr + sizeof(TreeKey) + nKey + FUNC0(0, nVal);
  if( (iPtr & ~(LSM_SHM_CHUNK_SIZE-1))!=(iEnd & ~(LSM_SHM_CHUNK_SIZE-1)) ){
    p->flags = 0;
  }else{
    p->flags = LSM_CONTIGUOUS;
  }

  if( *pRc ) return 0;
#if 0
  printf("store: %d %s\n", (int)iPtr, (char *)pKey);
#endif
  return p;
}