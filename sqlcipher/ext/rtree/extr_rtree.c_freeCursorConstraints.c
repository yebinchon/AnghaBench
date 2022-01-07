
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pUser; int (* xDelUser ) (int ) ;struct TYPE_5__* pInfo; } ;
typedef TYPE_1__ sqlite3_rtree_query_info ;
struct TYPE_6__ {int nConstraint; TYPE_1__* aConstraint; } ;
typedef TYPE_2__ RtreeCursor ;


 int sqlite3_free (TYPE_1__*) ;
 int stub1 (int ) ;

__attribute__((used)) static void freeCursorConstraints(RtreeCursor *pCsr){
  if( pCsr->aConstraint ){
    int i;
    for(i=0; i<pCsr->nConstraint; i++){
      sqlite3_rtree_query_info *pInfo = pCsr->aConstraint[i].pInfo;
      if( pInfo ){
        if( pInfo->xDelUser ) pInfo->xDelUser(pInfo->pUser);
        sqlite3_free(pInfo);
      }
    }
    sqlite3_free(pCsr->aConstraint);
    pCsr->aConstraint = 0;
  }
}
