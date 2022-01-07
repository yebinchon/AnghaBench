
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ eState; int nSavepoint; scalar_t__ useJournal; } ;
typedef TYPE_1__ Pager ;


 scalar_t__ PAGER_WRITER_LOCKED ;
 int SQLITE_OK ;
 int assert (int) ;
 int assert_pager_state (TYPE_1__*) ;
 int pagerOpenSavepoint (TYPE_1__*,int) ;

int sqlite3PagerOpenSavepoint(Pager *pPager, int nSavepoint){
  assert( pPager->eState>=PAGER_WRITER_LOCKED );
  assert( assert_pager_state(pPager) );

  if( nSavepoint>pPager->nSavepoint && pPager->useJournal ){
    return pagerOpenSavepoint(pPager, nSavepoint);
  }else{
    return SQLITE_OK;
  }
}
