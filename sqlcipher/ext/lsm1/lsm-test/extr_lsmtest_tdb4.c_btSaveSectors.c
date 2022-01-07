
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite4_int64 ;
struct TYPE_7__ {int nSectorSize; int nSector; int ** apSector; int pFile; TYPE_2__* pBt; } ;
struct TYPE_6__ {TYPE_1__* pVfs; } ;
struct TYPE_5__ {int (* xSectorSize ) (int ) ;int (* xSize ) (int ,int*) ;int (* xRead ) (int ,int,int *,int) ;} ;
typedef TYPE_3__ BtFile ;


 int MIN (int,int) ;
 int SQLITE4_OK ;
 int memcpy (int **,int **,int) ;
 int stub1 (int ) ;
 int stub2 (int ,int*) ;
 int stub3 (int ,int,int *,int) ;
 int testFree (int **) ;
 int * testMalloc (int) ;

__attribute__((used)) static int btSaveSectors(BtFile *p, sqlite4_int64 iOff, int nBuf){
  int rc;
  sqlite4_int64 iSz;
  int iFirst;
  int iSector;
  int iLast;

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
    u8 *aBuf = testMalloc(p->nSectorSize);
    nRead = MIN(p->nSectorSize, (iSz - iSOff));
    if( nRead>0 ){
      rc = p->pBt->pVfs->xRead(p->pFile, iSOff, aBuf, nRead);
    }

    while( rc==SQLITE4_OK && iSector>=p->nSector ){
      int nNew = p->nSector + 32;
      u8 **apNew = (u8**)testMalloc(nNew * sizeof(u8*));
      memcpy(apNew, p->apSector, p->nSector*sizeof(u8*));
      testFree(p->apSector);
      p->apSector = apNew;
      p->nSector = nNew;
    }

    p->apSector[iSector] = aBuf;
  }

  return rc;
}
