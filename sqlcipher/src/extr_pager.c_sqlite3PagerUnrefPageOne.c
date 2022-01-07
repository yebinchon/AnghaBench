
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pgno; int flags; int * pPager; } ;
typedef int Pager ;
typedef TYPE_1__ DbPage ;


 int PGHDR_MMAP ;
 int assert (int) ;
 int pagerUnlockIfUnused (int *) ;
 int sqlite3PagerResetLockTimeout (int *) ;
 int sqlite3PcacheRelease (TYPE_1__*) ;

void sqlite3PagerUnrefPageOne(DbPage *pPg){
  Pager *pPager;
  assert( pPg!=0 );
  assert( pPg->pgno==1 );
  assert( (pPg->flags & PGHDR_MMAP)==0 );
  pPager = pPg->pPager;
  sqlite3PagerResetLockTimeout(pPager);
  sqlite3PcacheRelease(pPg);
  pagerUnlockIfUnused(pPager);
}
