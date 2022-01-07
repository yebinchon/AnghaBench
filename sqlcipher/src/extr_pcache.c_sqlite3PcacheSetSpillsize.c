
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_4__ {scalar_t__ pCache; int szPage; int szExtra; int szSpill; } ;
typedef TYPE_1__ PCache ;


 int assert (int) ;
 int numberOfCachePages (TYPE_1__*) ;

int sqlite3PcacheSetSpillsize(PCache *p, int mxPage){
  int res;
  assert( p->pCache!=0 );
  if( mxPage ){
    if( mxPage<0 ){
      mxPage = (int)((-1024*(i64)mxPage)/(p->szPage+p->szExtra));
    }
    p->szSpill = mxPage;
  }
  res = numberOfCachePages(p);
  if( res<p->szSpill ) res = p->szSpill;
  return res;
}
