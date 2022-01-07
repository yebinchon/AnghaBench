
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int curPagerFlags; size_t iPage; scalar_t__ curIntKey; TYPE_1__** apPage; TYPE_1__* pPage; } ;
struct TYPE_12__ {int pPager; int mutex; } ;
struct TYPE_11__ {scalar_t__ isInit; scalar_t__ aData; int nCell; scalar_t__ intKey; int pgno; } ;
typedef int Pgno ;
typedef TYPE_1__ MemPage ;
typedef int DbPage ;
typedef TYPE_2__ BtShared ;
typedef TYPE_3__ BtCursor ;


 int SQLITE_CORRUPT ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_CORRUPT_PGNO (int ) ;
 int SQLITE_OK ;
 int assert (int) ;
 int btreeInitPage (TYPE_1__*) ;
 int btreePageFromDbPage (int *,int ,TYPE_2__*) ;
 int btreePagecount (TYPE_2__*) ;
 int releasePage (TYPE_1__*) ;
 int sqlite3PagerGet (int ,int ,int **,int) ;
 scalar_t__ sqlite3PagerGetData (int *) ;
 scalar_t__ sqlite3PagerGetExtra (int *) ;
 int sqlite3_mutex_held (int ) ;
 int testcase (int) ;

__attribute__((used)) static int getAndInitPage(
  BtShared *pBt,
  Pgno pgno,
  MemPage **ppPage,
  BtCursor *pCur,
  int bReadOnly
){
  int rc;
  DbPage *pDbPage;
  assert( sqlite3_mutex_held(pBt->mutex) );
  assert( pCur==0 || ppPage==&pCur->pPage );
  assert( pCur==0 || bReadOnly==pCur->curPagerFlags );
  assert( pCur==0 || pCur->iPage>0 );

  if( pgno>btreePagecount(pBt) ){
    rc = SQLITE_CORRUPT_BKPT;
    goto getAndInitPage_error;
  }
  rc = sqlite3PagerGet(pBt->pPager, pgno, (DbPage**)&pDbPage, bReadOnly);
  if( rc ){
    goto getAndInitPage_error;
  }
  *ppPage = (MemPage*)sqlite3PagerGetExtra(pDbPage);
  if( (*ppPage)->isInit==0 ){
    btreePageFromDbPage(pDbPage, pgno, pBt);
    rc = btreeInitPage(*ppPage);
    if( rc!=SQLITE_OK ){
      releasePage(*ppPage);
      goto getAndInitPage_error;
    }
  }
  assert( (*ppPage)->pgno==pgno );
  assert( (*ppPage)->aData==sqlite3PagerGetData(pDbPage) );



  if( pCur && ((*ppPage)->nCell<1 || (*ppPage)->intKey!=pCur->curIntKey) ){
    rc = SQLITE_CORRUPT_PGNO(pgno);
    releasePage(*ppPage);
    goto getAndInitPage_error;
  }
  return SQLITE_OK;

getAndInitPage_error:
  if( pCur ){
    pCur->iPage--;
    pCur->pPage = pCur->apPage[pCur->iPage];
  }
  testcase( pgno==0 );
  assert( pgno!=0 || rc==SQLITE_CORRUPT );
  return rc;
}
