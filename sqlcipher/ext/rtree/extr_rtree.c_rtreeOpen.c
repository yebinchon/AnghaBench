
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_vtab ;
struct TYPE_7__ {int nCursor; } ;
struct TYPE_5__ {int * pVtab; } ;
struct TYPE_6__ {TYPE_1__ base; } ;
typedef TYPE_2__ RtreeCursor ;
typedef TYPE_3__ Rtree ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ sqlite3_malloc64 (int) ;

__attribute__((used)) static int rtreeOpen(sqlite3_vtab *pVTab, sqlite3_vtab_cursor **ppCursor){
  int rc = SQLITE_NOMEM;
  Rtree *pRtree = (Rtree *)pVTab;
  RtreeCursor *pCsr;

  pCsr = (RtreeCursor *)sqlite3_malloc64(sizeof(RtreeCursor));
  if( pCsr ){
    memset(pCsr, 0, sizeof(RtreeCursor));
    pCsr->base.pVtab = pVTab;
    rc = SQLITE_OK;
    pRtree->nCursor++;
  }
  *ppCursor = (sqlite3_vtab_cursor *)pCsr;

  return rc;
}
