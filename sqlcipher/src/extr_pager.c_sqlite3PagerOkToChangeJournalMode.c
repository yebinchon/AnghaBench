
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ eState; scalar_t__ journalOff; int jfd; } ;
typedef TYPE_1__ Pager ;


 scalar_t__ NEVER (int) ;
 scalar_t__ PAGER_WRITER_CACHEMOD ;
 int assert (int ) ;
 int assert_pager_state (TYPE_1__*) ;
 scalar_t__ isOpen (int ) ;

int sqlite3PagerOkToChangeJournalMode(Pager *pPager){
  assert( assert_pager_state(pPager) );
  if( pPager->eState>=PAGER_WRITER_CACHEMOD ) return 0;
  if( NEVER(isOpen(pPager->jfd) && pPager->journalOff>0) ) return 0;
  return 1;
}
