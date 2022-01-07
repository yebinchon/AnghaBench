
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int iZero; int* aHash; int * aPgno; } ;
typedef TYPE_2__ WalHashLoc ;
struct TYPE_7__ {int mxFrame; } ;
struct TYPE_9__ {int writeLock; size_t nWiData; int* apWiData; TYPE_1__ hdr; } ;
typedef TYPE_3__ Wal ;


 int HASHTABLE_NPAGE_ONE ;
 int HASHTABLE_NSLOT ;
 int assert (int) ;
 int memset (void*,int ,int) ;
 int testcase (int) ;
 size_t walFramePage (scalar_t__) ;
 int walHash (int ) ;
 int walHashGet (TYPE_3__*,size_t,TYPE_2__*) ;
 int walNextHash (int) ;

__attribute__((used)) static void walCleanupHash(Wal *pWal){
  WalHashLoc sLoc;
  int iLimit = 0;
  int nByte;
  int i;

  assert( pWal->writeLock );
  testcase( pWal->hdr.mxFrame==HASHTABLE_NPAGE_ONE-1 );
  testcase( pWal->hdr.mxFrame==HASHTABLE_NPAGE_ONE );
  testcase( pWal->hdr.mxFrame==HASHTABLE_NPAGE_ONE+1 );

  if( pWal->hdr.mxFrame==0 ) return;





  assert( pWal->nWiData>walFramePage(pWal->hdr.mxFrame) );
  assert( pWal->apWiData[walFramePage(pWal->hdr.mxFrame)] );
  walHashGet(pWal, walFramePage(pWal->hdr.mxFrame), &sLoc);




  iLimit = pWal->hdr.mxFrame - sLoc.iZero;
  assert( iLimit>0 );
  for(i=0; i<HASHTABLE_NSLOT; i++){
    if( sLoc.aHash[i]>iLimit ){
      sLoc.aHash[i] = 0;
    }
  }




  nByte = (int)((char *)sLoc.aHash - (char *)&sLoc.aPgno[iLimit+1]);
  memset((void *)&sLoc.aPgno[iLimit+1], 0, nByte);
}
