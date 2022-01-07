
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bt_cursor ;
typedef int TestDb ;
struct TYPE_4__ {int pBt; scalar_t__ bFastInsert; } ;
typedef TYPE_1__ BtDb ;


 int BT_CONTROL_FAST_INSERT_OP ;
 int BT_SEEK_GE ;
 int BT_SEEK_LE ;
 int MIN (int,int) ;
 int SQLITE4_INEXACT ;
 int SQLITE4_NOTFOUND ;
 int SQLITE4_OK ;
 int btMinTransaction (TYPE_1__*,int,int*) ;
 int btRestoreTransaction (TYPE_1__*,int,int) ;
 int memcmp (void*,void const*,int) ;
 int sqlite4BtControl (int ,int ,int ) ;
 int sqlite4BtCsrClose (int *) ;
 int sqlite4BtCsrData (int *,int ,int,void const**,int*) ;
 int sqlite4BtCsrKey (int *,void const**,int*) ;
 int sqlite4BtCsrLast (int *) ;
 int sqlite4BtCsrNext (int *) ;
 int sqlite4BtCsrOpen (int ,int ,int **) ;
 int sqlite4BtCsrPrev (int *) ;
 int sqlite4BtCsrSeek (int *,void*,int,int ) ;

__attribute__((used)) static int bt_scan(
  TestDb *pTestDb,
  void *pCtx,
  int bReverse,
  void *pFirst, int nFirst,
  void *pLast, int nLast,
  void (*xCallback)(void *, void *, int , void *, int)
){
  BtDb *p = (BtDb*)pTestDb;
  bt_cursor *pCsr = 0;
  int rc;
  int iLevel;

  rc = btMinTransaction(p, 1, &iLevel);

  if( rc==SQLITE4_OK ){
    if( p->bFastInsert ) sqlite4BtControl(p->pBt, BT_CONTROL_FAST_INSERT_OP, 0);
    rc = sqlite4BtCsrOpen(p->pBt, 0, &pCsr);
  }
  if( rc==SQLITE4_OK ){
    if( bReverse ){
      if( pLast ){
        rc = sqlite4BtCsrSeek(pCsr, pLast, nLast, BT_SEEK_LE);
      }else{
        rc = sqlite4BtCsrLast(pCsr);
      }
    }else{
      rc = sqlite4BtCsrSeek(pCsr, pFirst, nFirst, BT_SEEK_GE);
    }
    if( rc==SQLITE4_INEXACT ) rc = SQLITE4_OK;

    while( rc==SQLITE4_OK ){
      const void *pK = 0; int nK = 0;
      const void *pV = 0; int nV = 0;

      rc = sqlite4BtCsrKey(pCsr, &pK, &nK);
      if( rc==SQLITE4_OK ){
        rc = sqlite4BtCsrData(pCsr, 0, -1, &pV, &nV);
      }

      if( rc!=SQLITE4_OK ) break;
      if( bReverse ){
        if( pFirst ){
          int res;
          int nCmp = MIN(nK, nFirst);
          res = memcmp(pFirst, pK, nCmp);
          if( res>0 || (res==0 && nK<nFirst) ) break;
        }
      }else{
        if( pLast ){
          int res;
          int nCmp = MIN(nK, nLast);
          res = memcmp(pLast, pK, nCmp);
          if( res<0 || (res==0 && nK>nLast) ) break;
        }
      }

      xCallback(pCtx, (void*)pK, nK, (void*)pV, nV);
      if( bReverse ){
        rc = sqlite4BtCsrPrev(pCsr);
      }else{
        rc = sqlite4BtCsrNext(pCsr);
      }
    }
    if( rc==SQLITE4_NOTFOUND ) rc = SQLITE4_OK;

    sqlite4BtCsrClose(pCsr);
  }

  rc = btRestoreTransaction(p, iLevel, rc);
  return rc;
}
