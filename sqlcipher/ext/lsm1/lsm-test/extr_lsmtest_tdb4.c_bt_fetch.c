
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int bt_cursor ;
typedef int TestDb ;
struct TYPE_2__ {int nBuffer; int pBt; int * aBuffer; scalar_t__ bFastInsert; } ;
typedef TYPE_1__ BtDb ;


 int BT_CONTROL_FAST_INSERT_OP ;
 int BT_SEEK_EQ ;
 int SQLITE4_INEXACT ;
 int SQLITE4_NOTFOUND ;
 int SQLITE4_OK ;
 int free (int *) ;
 scalar_t__ malloc (int) ;
 int memcpy (int *,void const*,int) ;
 int sqlite4BtBegin (int ,int) ;
 int sqlite4BtCommit (int ,int ) ;
 int sqlite4BtControl (int ,int ,int ) ;
 int sqlite4BtCsrClose (int *) ;
 int sqlite4BtCsrData (int *,int ,int,void const**,int*) ;
 int sqlite4BtCsrOpen (int ,int ,int **) ;
 int sqlite4BtCsrSeek (int *,void*,int,int ) ;
 int sqlite4BtTransactionLevel (int ) ;

__attribute__((used)) static int bt_fetch(
  TestDb *pTestDb,
  void *pK, int nK,
  void **ppVal, int *pnVal
){
  BtDb *p = (BtDb*)pTestDb;
  bt_cursor *pCsr = 0;
  int iLevel;
  int rc = SQLITE4_OK;

  iLevel = sqlite4BtTransactionLevel(p->pBt);
  if( iLevel==0 ){
    rc = sqlite4BtBegin(p->pBt, 1);
    if( rc!=SQLITE4_OK ) return rc;
  }

  if( p->bFastInsert ) sqlite4BtControl(p->pBt, BT_CONTROL_FAST_INSERT_OP, 0);
  rc = sqlite4BtCsrOpen(p->pBt, 0, &pCsr);
  if( rc==SQLITE4_OK ){
    rc = sqlite4BtCsrSeek(pCsr, pK, nK, BT_SEEK_EQ);
    if( rc==SQLITE4_OK ){
      const void *pV = 0;
      int nV = 0;
      rc = sqlite4BtCsrData(pCsr, 0, -1, &pV, &nV);
      if( rc==SQLITE4_OK ){
        if( nV>p->nBuffer ){
          free(p->aBuffer);
          p->aBuffer = (u8*)malloc(nV*2);
          p->nBuffer = nV*2;
        }
        memcpy(p->aBuffer, pV, nV);
        *pnVal = nV;
        *ppVal = (void*)(p->aBuffer);
      }

    }else if( rc==SQLITE4_INEXACT || rc==SQLITE4_NOTFOUND ){
      *ppVal = 0;
      *pnVal = -1;
      rc = SQLITE4_OK;
    }
    sqlite4BtCsrClose(pCsr);
  }

  if( iLevel==0 ) sqlite4BtCommit(p->pBt, 0);
  return rc;
}
