
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_2__ {scalar_t__ inWrTrans; } ;
typedef TYPE_1__ Rtree ;


 int SQLITE_OK ;
 int assert (int) ;

__attribute__((used)) static int rtreeBeginTransaction(sqlite3_vtab *pVtab){
  Rtree *pRtree = (Rtree *)pVtab;
  assert( pRtree->inWrTrans==0 );
  pRtree->inWrTrans++;
  return SQLITE_OK;
}
