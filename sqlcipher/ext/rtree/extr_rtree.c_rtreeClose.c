
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ pVtab; } ;
typedef TYPE_1__ sqlite3_vtab_cursor ;
struct TYPE_11__ {scalar_t__ nCursor; } ;
struct TYPE_10__ {int * aNode; struct TYPE_10__* aPoint; int pReadAux; } ;
typedef TYPE_2__ RtreeCursor ;
typedef TYPE_3__ Rtree ;


 int RTREE_CACHE_SZ ;
 int SQLITE_OK ;
 int assert (int) ;
 int freeCursorConstraints (TYPE_2__*) ;
 int nodeBlobReset (TYPE_3__*) ;
 int nodeRelease (TYPE_3__*,int ) ;
 int sqlite3_finalize (int ) ;
 int sqlite3_free (TYPE_2__*) ;

__attribute__((used)) static int rtreeClose(sqlite3_vtab_cursor *cur){
  Rtree *pRtree = (Rtree *)(cur->pVtab);
  int ii;
  RtreeCursor *pCsr = (RtreeCursor *)cur;
  assert( pRtree->nCursor>0 );
  freeCursorConstraints(pCsr);
  sqlite3_finalize(pCsr->pReadAux);
  sqlite3_free(pCsr->aPoint);
  for(ii=0; ii<RTREE_CACHE_SZ; ii++) nodeRelease(pRtree, pCsr->aNode[ii]);
  sqlite3_free(pCsr);
  pRtree->nCursor--;
  nodeBlobReset(pRtree);
  return SQLITE_OK;
}
