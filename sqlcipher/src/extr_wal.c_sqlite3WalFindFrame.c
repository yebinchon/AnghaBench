
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_9__ {size_t* aHash; scalar_t__ iZero; scalar_t__* aPgno; } ;
typedef TYPE_2__ WalHashLoc ;
struct TYPE_8__ {scalar_t__ mxFrame; } ;
struct TYPE_10__ {scalar_t__ readLock; scalar_t__ bShmUnreliable; scalar_t__ minFrame; scalar_t__ lockError; TYPE_1__ hdr; } ;
typedef TYPE_3__ Wal ;
typedef scalar_t__ Pgno ;


 scalar_t__ CORRUPT_DB ;
 int HASHTABLE_NSLOT ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int walFramePage (scalar_t__) ;
 scalar_t__ walFramePgno (TYPE_3__*,scalar_t__) ;
 int walHash (scalar_t__) ;
 int walHashGet (TYPE_3__*,int,TYPE_2__*) ;
 int walNextHash (int) ;

int sqlite3WalFindFrame(
  Wal *pWal,
  Pgno pgno,
  u32 *piRead
){
  u32 iRead = 0;
  u32 iLast = pWal->hdr.mxFrame;
  int iHash;
  int iMinHash;


  assert( pWal->readLock>=0 || pWal->lockError );







  if( iLast==0 || (pWal->readLock==0 && pWal->bShmUnreliable==0) ){
    *piRead = 0;
    return SQLITE_OK;
  }
  iMinHash = walFramePage(pWal->minFrame);
  for(iHash=walFramePage(iLast); iHash>=iMinHash; iHash--){
    WalHashLoc sLoc;
    int iKey;
    int nCollide;
    int rc;

    rc = walHashGet(pWal, iHash, &sLoc);
    if( rc!=SQLITE_OK ){
      return rc;
    }
    nCollide = HASHTABLE_NSLOT;
    for(iKey=walHash(pgno); sLoc.aHash[iKey]; iKey=walNextHash(iKey)){
      u32 iFrame = sLoc.aHash[iKey] + sLoc.iZero;
      if( iFrame<=iLast && iFrame>=pWal->minFrame
       && sLoc.aPgno[sLoc.aHash[iKey]]==pgno ){
        assert( iFrame>iRead || CORRUPT_DB );
        iRead = iFrame;
      }
      if( (nCollide--)==0 ){
        return SQLITE_CORRUPT_BKPT;
      }
    }
    if( iRead ) break;
  }
  *piRead = iRead;
  return SQLITE_OK;
}
