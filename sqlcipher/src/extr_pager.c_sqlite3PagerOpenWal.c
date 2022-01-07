
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ eState; int journalMode; int jfd; int pWal; int tempFile; } ;
typedef TYPE_1__ Pager ;


 int PAGER_JOURNALMODE_WAL ;
 scalar_t__ PAGER_OPEN ;
 scalar_t__ PAGER_READER ;
 int SQLITE_CANTOPEN ;
 int SQLITE_OK ;
 int assert (int) ;
 int assert_pager_state (TYPE_1__*) ;
 int pagerOpenWal (TYPE_1__*) ;
 int sqlite3OsClose (int ) ;
 int sqlite3PagerWalSupported (TYPE_1__*) ;

int sqlite3PagerOpenWal(
  Pager *pPager,
  int *pbOpen
){
  int rc = SQLITE_OK;

  assert( assert_pager_state(pPager) );
  assert( pPager->eState==PAGER_OPEN || pbOpen );
  assert( pPager->eState==PAGER_READER || !pbOpen );
  assert( pbOpen==0 || *pbOpen==0 );
  assert( pbOpen!=0 || (!pPager->tempFile && !pPager->pWal) );

  if( !pPager->tempFile && !pPager->pWal ){
    if( !sqlite3PagerWalSupported(pPager) ) return SQLITE_CANTOPEN;


    sqlite3OsClose(pPager->jfd);

    rc = pagerOpenWal(pPager);
    if( rc==SQLITE_OK ){
      pPager->journalMode = PAGER_JOURNALMODE_WAL;
      pPager->eState = PAGER_OPEN;
    }
  }else{
    *pbOpen = 1;
  }

  return rc;
}
