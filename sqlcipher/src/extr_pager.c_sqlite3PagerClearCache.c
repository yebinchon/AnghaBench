
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tempFile; } ;
typedef TYPE_1__ Pager ;


 scalar_t__ MEMDB ;
 int assert (int) ;
 int pager_reset (TYPE_1__*) ;

void sqlite3PagerClearCache(Pager *pPager){
  assert( MEMDB==0 || pPager->tempFile );
  if( pPager->tempFile==0 ) pager_reset(pPager);
}
