#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int sqlite4_int64 ;
struct TYPE_7__ {int nSectorSize; int nSector; int /*<<< orphan*/ ** apSector; int /*<<< orphan*/  pFile; TYPE_2__* pBt; } ;
struct TYPE_6__ {TYPE_1__* pVfs; } ;
struct TYPE_5__ {int (* xSectorSize ) (int /*<<< orphan*/ ) ;int (* xSize ) (int /*<<< orphan*/ ,int*) ;int (* xRead ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ;} ;
typedef  TYPE_3__ BtFile ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int SQLITE4_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(BtFile *p, sqlite4_int64 iOff, int nBuf){
  int rc;
  sqlite4_int64 iSz;              /* Size of file on disk */
  int iFirst;                     /* First sector affected */
  int iSector;                    /* Current sector */
  int iLast;                      /* Last sector affected */

  if( p->nSectorSize==0 ){
    p->nSectorSize = p->pBt->pVfs->xSectorSize(p->pFile);
    if( p->nSectorSize<512 ) p->nSectorSize = 512;
  }
  iLast = (iOff+nBuf-1) / p->nSectorSize;
  iFirst = iOff / p->nSectorSize;

  rc = p->pBt->pVfs->xSize(p->pFile, &iSz);
  for(iSector=iFirst; rc==SQLITE4_OK && iSector<=iLast; iSector++){
    int nRead;
    sqlite4_int64 iSOff = iSector * p->nSectorSize;
    u8 *aBuf = FUNC6(p->nSectorSize);
    nRead = FUNC0(p->nSectorSize, (iSz - iSOff));
    if( nRead>0 ){
      rc = p->pBt->pVfs->xRead(p->pFile, iSOff, aBuf, nRead);
    }

    while( rc==SQLITE4_OK && iSector>=p->nSector ){
      int nNew = p->nSector + 32;
      u8 **apNew = (u8**)FUNC6(nNew * sizeof(u8*));
      FUNC1(apNew, p->apSector, p->nSector*sizeof(u8*));
      FUNC5(p->apSector);
      p->apSector = apNew;
      p->nSector = nNew;
    }

    p->apSector[iSector] = aBuf;
  }

  return rc;
}